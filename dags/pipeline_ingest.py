from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.providers.postgres.operators.postgres import PostgresOperator
import os
import pandas as pd
from sqlalchemy import create_engine

# Configuration des connexions
POSTGRES_USER = os.getenv("POSTGRES_USER", "indusflow_admin")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")
POSTGRES_DB = os.getenv("POSTGRES_DB", "indusflow_warehouse")
DATABASE_URL = f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}@postgres:5432/{POSTGRES_DB}"

# Configuration par défaut du DAG
default_args = {
    'owner': 'data_engineer',
    'depends_on_past': False,
    'start_date': datetime(2026, 1, 1),
    'email_on_failure': False,
    'retries': 2,
    'retry_delay': timedelta(minutes=5),
}

def execute_ingestion(filename, table_name):
    """Fonction Python exécutée par Airflow pour charger un CSV"""
    # Chemin absolu partagé ou local dans le conteneur Airflow
    data_folder = "/opt/airflow/dags/csv" 
    file_path = os.path.join(data_folder, filename)
    
    if not os.path.exists(file_path):
        raise FileNotFoundError(f"Fichier requis manquant : {file_path}")
        
    engine = create_engine(DATABASE_URL)
    df = pd.read_csv(file_path)
    # Mode append pour respecter l'initialisation DDL
    df.to_sql(table_name, con=engine, if_exists='append', index=False, chunksize=500)
    print(f"✅ {len(df)} lignes injectées dans la table {table_name}")

# Définition du DAG d'orchestration globale
with DAG(
    'indusflow_data_pipeline',
    default_args=default_args,
    description='Pipeline orchestration industrialisé - Ingestion & Chargement IndusFlow',
    schedule_interval='@daily',
    catchup=False,
) as dag:

    # 1. Tâche de vérification / initialisation du schéma
    init_db_schema = PostgresOperator(
        task_id='init_db_schema',
        postgres_conn_id='postgres_default',
        sql='init_schema.sql', # Doit être accessible par Airflow
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

    # --- STRUCTURE DE DÉPENDANCE DU PIPELINE ---
    # Étape 1 : Initialisation
    # Étape 2 : Dimensions en parallèle
    init_db_schema >> [ingest_usines, ingest_produits, ingest_clients]
    
    # Étape 3 : Les dimensions doivent être prêtes avant d'insérer les faits
    [ingest_usines, ingest_produits, ingest_clients] >> ingest_cycles
    
    # Étape 4 : Les faits structurent le reste des tables opérationnelles rattachées
    ingest_cycles >> [ingest_etapes, ingest_capteurs, ingest_erreurs]