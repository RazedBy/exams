import os
import sys
from pyspark.sql import SparkSession
from pyspark.sql.functions import avg, count, col, min, max

def main():
    print("🚀 Démarrage du traitement distribué Spark...")
    
    # Récupération des configurations de la base de données
    db_user = os.getenv("POSTGRES_USER", "indusflow_admin")
    db_password = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")
    db_name = os.getenv("POSTGRES_DB", "indusflow_warehouse")
    db_host = "postgres"
    db_port = "5432"
    
    jdbc_url = f"jdbc:postgresql://{db_host}:{db_port}/{db_name}"
    
    # 1. Initialisation de la session Spark avec le package JDBC PostgreSQL
    spark = SparkSession.builder \
        .appName("IndusFlow_Clean_Aggregations") \
        .config("spark.jars.packages", "org.postgresql:postgresql:42.7.3") \
        .getOrCreate()
        
    print("✅ Session Spark initialisée avec succès.")

    # Dossier contenant les données (monté dans le conteneur Spark)
    data_folder = "/opt/spark/dags"
    sensors_csv = os.path.join(data_folder, "capteurs_machines_bloc3_propre.csv")
    errors_csv = os.path.join(data_folder, "logs_erreurs_machines_bloc3_propre.csv")

    try:
        # 2. Ingestion des données IoT (Capteurs)
        print(f"📖 Lecture des données capteurs depuis {sensors_csv}...")
        df_sensors = spark.read.csv(sensors_csv, header=True, inferSchema=True)
        df_sensors.show(5)
        
        # Nettoyage simple : exclusion des valeurs nulles sur la température ou vibration
        df_sensors_clean = df_sensors.filter(
            col("machine_id").isNotNull() & 
            col("temperature_c").isNotNull() & 
            col("vibration_level").isNotNull()
        )
        
        # Agrégation des métriques capteurs par machine
        print("📊 Calcul des agrégations capteurs par machine...")
        df_sensor_aggreg = df_sensors_clean.groupBy("machine_id").agg(
            count("sensor_id").alias("total_readings"),
            avg("temperature_c").alias("avg_temperature"),
            min("temperature_c").alias("min_temperature"),
            max("temperature_c").alias("max_temperature"),
            avg("vibration_level").alias("avg_vibration"),
            avg("pressure_bar").alias("avg_pressure")
        )
        df_sensor_aggreg.show()

        # 3. Ingestion des données de logs d'erreurs
        print(f"📖 Lecture des logs d'erreurs depuis {errors_csv}...")
        df_errors = spark.read.csv(errors_csv, header=True, inferSchema=True)
        df_errors.show(5)
        
        # Nettoyage simple
        df_errors_clean = df_errors.filter(col("machine_id").isNotNull() & col("severity").isNotNull())
        
        # Agrégation des logs d'erreurs par machine et niveau de sévérité
        print("📊 Calcul des statistiques d'erreurs par machine et sévérité...")
        df_error_aggreg = df_errors_clean.groupBy("machine_id", "severity").agg(
            count("log_id").alias("total_errors"),
            avg("resolution_time_min").alias("avg_resolution_time_min")
        )
        df_error_aggreg.show()

        # 4. Écriture des résultats dans PostgreSQL via JDBC
        properties = {
            "user": db_user,
            "password": db_password,
            "driver": "org.postgresql.Driver"
        }

        print(f"💾 Écriture des agrégations capteurs dans la table 'spark_sensor_aggregates' via JDBC...")
        df_sensor_aggreg.write.jdbc(
            url=jdbc_url,
            table="spark_sensor_aggregates",
            mode="overwrite",
            properties=properties
        )
        
        print(f"💾 Écriture des statistiques d'erreurs dans la table 'spark_error_aggregates' via JDBC...")
        df_error_aggreg.write.jdbc(
            url=jdbc_url,
            table="spark_error_aggregates",
            mode="overwrite",
            properties=properties
        )
        
        print("🎉 Traitement Spark et écriture PostgreSQL terminés avec succès !")
        
    except Exception as e:
        print(f"❌ Une erreur est survenue lors du traitement Spark : {e}", file=sys.stderr)
        sys.exit(1)
    finally:
        spark.stop()

if __name__ == "__main__":
    main()
