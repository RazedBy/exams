from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.operators.bash import BashOperator
from airflow.providers.postgres.operators.postgres import PostgresOperator
import os
import pandas as pd
from sqlalchemy import create_engine

# Configuration des connexions
POSTGRES_USER = os.getenv("POSTGRES_USER", "indusflow_admin")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")
POSTGRES_DB = os.getenv("POSTGRES_DB", "indusflow_warehouse")
DATABASE_URL = f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}@postgres:5432/{POSTGRES_DB}"

def task_failure_alert(context):
    """Callback appelée lorsqu'une tâche du DAG échoue pour insérer une alerte de monitoring"""
    from sqlalchemy import create_engine, text
    import datetime
    
    dag_id = context['dag'].dag_id
    task_id = context['task_instance'].task_id
    
    engine = create_engine(DATABASE_URL)
    with engine.connect() as conn:
        query = text("""
            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)
            VALUES (
                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),
                'airflow',
                'CRITICAL',
                'task_failure',
                1.0,
                0,
                :timestamp
            )
        """)
        conn.execute(query, {"timestamp": datetime.datetime.utcnow()})
        conn.commit()
    print(f"🚨 Alerte insérée en base suite à l'échec de la tâche {task_id} du DAG {dag_id}.")

# Configuration par défaut du DAG
default_args = {
    'owner': 'data_engineer',
    'depends_on_past': False,
    'start_date': datetime(2026, 1, 1),
    'email_on_failure': False,
    'retries': 2,
    'retry_delay': timedelta(minutes=5),
    'on_failure_callback': task_failure_alert,
}

def upload_csvs_to_minio():
    """Dépose tous les fichiers CSV requis dans un bucket MinIO indusflow-raw (C3.4)."""
    import boto3
    from botocore.client import Config
    import glob
    import os
    
    minio_user = os.getenv("MINIO_ROOT_USER", "minio_admin")
    minio_password = os.getenv("MINIO_ROOT_PASSWORD", "MinioSecretPassword2026!")
    
    s3 = boto3.client(
        's3',
        endpoint_url='http://minio:9000',
        aws_access_key_id=minio_user,
        aws_secret_access_key=minio_password,
        config=Config(signature_version='s3v4'),
        region_name='us-east-1'
    )
    
    bucket_name = 'indusflow-raw'
    
    try:
        s3.create_bucket(Bucket=bucket_name)
        print(f"Bucket '{bucket_name}' créé avec succès.")
    except s3.exceptions.BucketAlreadyOwnedByYou:
        print(f"Bucket '{bucket_name}' existe déjà et vous appartient.")
    except s3.exceptions.BucketAlreadyExists:
        print(f"Bucket '{bucket_name}' existe déjà.")
        
    data_folder = "/opt/airflow/dags"
    if not os.path.exists(data_folder):
        data_folder = "./dags"
        
    csv_files = glob.glob(os.path.join(data_folder, "*.csv"))
    
    for file_path in csv_files:
        filename = os.path.basename(file_path)
        print(f"Téléversement de {filename} vers le bucket {bucket_name}...")
        s3.upload_file(file_path, bucket_name, filename)
        print(f"✅ Fichier {filename} téléversé avec succès.")

def execute_ingestion(filename, table_name):
    """Télécharge le fichier CSV depuis MinIO et l'ingère dans PostgreSQL (C3.4)"""
    import boto3
    from botocore.client import Config
    import io
    import os
    
    minio_user = os.getenv("MINIO_ROOT_USER", "minio_admin")
    minio_password = os.getenv("MINIO_ROOT_PASSWORD", "MinioSecretPassword2026!")
    
    s3 = boto3.client(
        's3',
        endpoint_url='http://minio:9000',
        aws_access_key_id=minio_user,
        aws_secret_access_key=minio_password,
        config=Config(signature_version='s3v4'),
        region_name='us-east-1'
    )
    
    bucket_name = 'indusflow-raw'
    
    try:
        obj = s3.get_object(Bucket=bucket_name, Key=filename)
        df = pd.read_csv(io.BytesIO(obj['Body'].read()))
    except Exception as e:
        print(f"⚠️ Erreur lors de la lecture depuis MinIO ({e}). Tentative de lecture locale...")
        data_folder = "/opt/airflow/dags"
        file_path = os.path.join(data_folder, filename)
        if not os.path.exists(file_path):
            file_path = os.path.join("./dags", filename)
        df = pd.read_csv(file_path)
        
    engine = create_engine(DATABASE_URL)
    df.to_sql(table_name, con=engine, if_exists='append', index=False, chunksize=500)
    print(f"✅ {len(df)} lignes injectées dans la table {table_name}")

def create_postgres_users():
    """Crée les rôles PostgreSQL réels de connexion pour chaque utilisateur de la table acces_utilisateurs et leur attribue leur rôle applicatif (C3.3)."""
    from sqlalchemy import create_engine, text
    import pandas as pd
    import logging
    
    csv_path = '/opt/airflow/dags/acces_utilisateurs.csv'
    if not os.path.exists(csv_path):
        csv_path = './dags/acces_utilisateurs.csv'
        
    df = pd.read_csv(csv_path)
    engine = create_engine(DATABASE_URL)
    
    user_default_password = os.getenv("PG_USER_DEFAULT_PASSWORD", "SecurePassword2026!")
    
    with engine.connect() as conn:
        for _, row in df.iterrows():
            username = str(row['username']).strip()
            role = str(row['role']).strip() if pd.notna(row['role']) else ""
            is_active = int(row['is_active'])
            
            # Ne pas modifier ou recréer l'admin principal ou le superuser indusflow_admin
            if username in ['admin', 'indusflow_admin', 'postgres']:
                continue
                
            if not role:
                logging.warning(f"⚠️ L'utilisateur {username} n'a pas de rôle spécifié dans le CSV (compte désactivé / non rattaché).")
                try:
                    role_check = conn.execute(text("SELECT 1 FROM pg_roles WHERE rolname = :username"), {"username": username}).fetchone()
                    if not role_check:
                        conn.execute(text(f"CREATE ROLE {username} WITH NOLOGIN PASSWORD :password"), {"password": user_default_password})
                    else:
                        conn.execute(text(f"ALTER ROLE {username} WITH NOLOGIN"))
                except Exception as e:
                    logging.warning(f"⚠️ Erreur lors de la désactivation ou de la création de l'utilisateur {username} : {e}")
                continue
                
            try:
                # Étape 1 : Créer le rôle de connexion s'il n'existe pas
                role_check = conn.execute(text("SELECT 1 FROM pg_roles WHERE rolname = :username"), {"username": username}).fetchone()
                
                login_clause = "LOGIN" if is_active == 1 else "NOLOGIN"
                if not role_check:
                    try:
                        query_create = f"CREATE ROLE {username} WITH {login_clause} PASSWORD :password"
                        conn.execute(text(query_create), {"password": user_default_password})
                        logging.info(f"✅ Rôle de connexion créé pour l'utilisateur : {username} ({login_clause})")
                    except Exception as ex:
                        logging.warning(f"⚠️ Erreur lors de la création du rôle {username} (déjà existant ?) : {ex}")
                else:
                    conn.execute(text(f"ALTER ROLE {username} WITH {login_clause}"))
                    
                # Étape 2 : Rattacher au rôle applicatif correspondant
                role_applicatif = f"indusflow_{role.lower()}"
                app_role_check = conn.execute(text("SELECT 1 FROM pg_roles WHERE rolname = :role"), {"role": role_applicatif}).fetchone()
                if app_role_check:
                    try:
                        conn.execute(text(f"GRANT {role_applicatif} TO {username}"))
                        logging.info(f"✅ Utilisateur {username} rattaché au rôle {role_applicatif}")
                    except Exception as ex:
                        logging.warning(f"⚠️ Erreur lors du rattachement de {username} au rôle {role_applicatif} : {ex}")
                else:
                    logging.error(f"❌ Le rôle applicatif {role_applicatif} n'existe pas !")
            except Exception as e:
                logging.error(f"❌ Erreur lors du traitement de l'utilisateur {username} : {e}")

# Définition du DAG d'orchestration globale
with DAG(
    'indusflow_data_pipeline',
    default_args=default_args,
    description='Pipeline orchestration industrialisé - Ingestion & Chargement IndusFlow',
    schedule_interval='@daily',
    catchup=False,
    max_active_runs=1,
) as dag:

    # 1. Tâche de vérification / initialisation du schéma
    upload_raw_to_minio = PythonOperator(
        task_id='upload_raw_to_minio',
        python_callable=upload_csvs_to_minio
    )

    # 1. Tâche de vérification / initialisation du schéma
    init_db_schema = PostgresOperator(
        task_id='init_db_schema',
        postgres_conn_id='postgres_default',
        sql='init_schema.sql', # Doit être accessible par Airflow
    )

    create_users_task = PythonOperator(
        task_id='create_postgres_users',
        python_callable=create_postgres_users
    )

    # 2. Ingestion des Tables de Dimensions (Priorité Absolue pour les FK)
    ingest_usines = PythonOperator(
        task_id='ingest_usines',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'usines_bloc3_propre.csv', 'table_name': 'usines'}
    )

    ingest_produits = PythonOperator(
        task_id='ingest_produits',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'produits_bloc3_propre.csv', 'table_name': 'produits'}
    )

    ingest_clients = PythonOperator(
        task_id='ingest_clients',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'clients_industriels_bloc3_propre.csv', 'table_name': 'clients_industriels'}
    )

    # 3. Ingestion de la Table de Faits Centrale
    ingest_cycles = PythonOperator(
        task_id='ingest_cycles_production',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'cycles_production_bloc3_propre.csv', 'table_name': 'cycles_production'}
    )

    # 4. Ingestion des Logs Opérationnels et IoT
    ingest_etapes = PythonOperator(
        task_id='ingest_etapes_fabrication',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'etapes_fabrication_bloc3_propre.csv', 'table_name': 'etapes_fabrication'}
    )

    ingest_capteurs = PythonOperator(
        task_id='ingest_capteurs_machines',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'capteurs_machines_bloc3_propre.csv', 'table_name': 'capteurs_machines'}
    )

    ingest_erreurs = PythonOperator(
        task_id='ingest_logs_erreurs',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'logs_erreurs_machines_bloc3_propre.csv', 'table_name': 'logs_erreurs_machines'}
    )

    ingest_cameras = PythonOperator(
        task_id='ingest_cameras_qualite',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'cameras_qualite_bloc3_propre.csv', 'table_name': 'cameras_qualite'}
    )

    ingest_planning = PythonOperator(
        task_id='ingest_planning_production',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'planning_production_bloc3_propre.csv', 'table_name': 'planning_production'}
    )

    ingest_pieces = PythonOperator(
        task_id='ingest_pieces_detachees',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'pieces_detachees_bloc3_propre.csv', 'table_name': 'pieces_detachees'}
    )

    ingest_maintenance = PythonOperator(
        task_id='ingest_maintenance_machines',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'maintenance_machines_bloc3_propre.csv', 'table_name': 'maintenance_machines'}
    )

    ingest_acces = PythonOperator(
        task_id='ingest_acces_utilisateurs',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'acces_utilisateurs.csv', 'table_name': 'acces_utilisateurs'}
    )

    ingest_alertes = PythonOperator(
        task_id='ingest_alertes_monitoring',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'alertes_monitoring.csv', 'table_name': 'alertes_monitoring'}
    )

    ingest_logs_jobs = PythonOperator(
        task_id='ingest_logs_jobs_airflow',
        python_callable=execute_ingestion,
        op_kwargs={'filename': 'logs_jobs_airflow.csv', 'table_name': 'logs_jobs_airflow'}
    )

    spark_aggregation = BashOperator(
        task_id='spark_aggregation_task',
        bash_command='docker exec indusflow_spark_master /opt/spark/bin/spark-submit '
                     '--master spark://spark-master:7077 '
                     '--packages org.postgresql:postgresql:42.7.3 '
                     '--conf spark.jars.ivy=/tmp/.ivy2 '
                     '/opt/spark/dags/spark_process.py'
    )

    # --- STRUCTURE DE DÉPENDANCE DU PIPELINE ---
    # Étape 1 : Téléversement vers MinIO
    # Étape 2 : Initialisation & Sécurité
    # Étape 3 : Dimensions en parallèle
    upload_raw_to_minio >> init_db_schema >> create_users_task >> [ingest_usines, ingest_produits, ingest_clients]
    
    # Étape 3 : Les dimensions doivent être prêtes avant d'insérer les faits
    [ingest_usines, ingest_produits, ingest_clients] >> ingest_cycles
    
    # Étape 4 : Les faits structurent le reste des tables opérationnelles rattachées
    ingest_cycles >> [
        ingest_etapes,
        ingest_capteurs,
        ingest_erreurs,
        ingest_cameras,
        ingest_planning,
        ingest_pieces,
        ingest_maintenance,
        ingest_acces,
        ingest_alertes,
        ingest_logs_jobs
    ]

    # Étape 5 : Agrégation Spark dépend des capteurs et erreurs
    [ingest_capteurs, ingest_erreurs] >> spark_aggregation