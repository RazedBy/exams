import os
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv

# 1. Chargement des variables d'environnement du fichier .env
load_dotenv()

POSTGRES_USER = os.getenv("POSTGRES_USER", "indusflow_admin")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")
POSTGRES_DB = os.getenv("POSTGRES_DB", "indusflow_warehouse")

# Connexion à PostgreSQL (via localhost depuis ta machine hôte)
DATABASE_URL = f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}@localhost:5432/{POSTGRES_DB}"
engine = create_engine(DATABASE_URL)

# 2. Cartographie des fichiers CSV disponibles vers leurs tables respectives
# Remarque : Les noms correspondent exactement aux fichiers "propre" importés
csv_to_table_mapping = {
    "usines_bloc3_propre.csv": "usines",
    "produits_bloc3_propre.csv": "produits",
    "clients_industriels_bloc3_propre.csv": "clients_industriels",
    "cycles_production_bloc3_propre.csv": "cycles_production",
    "etapes_fabrication_bloc3_propre.csv": "etapes_fabrication",
    "capteurs_machines_bloc3_propre.csv": "capteurs_machines",
    "cameras_qualite_bloc3_propre.csv": "cameras_qualite",
    "logs_erreurs_machines_bloc3_propre.csv": "logs_erreurs_machines",
    "planning_production_bloc3_propre.csv": "planning_production",
    "pieces_detachees_bloc3_propre.csv": "pieces_detachees",
    "maintenance_machines_bloc3_propre.csv": "maintenance_machines",
    "acces_utilisateurs.csv": "acces_utilisateurs",
    "alertes_monitoring.csv": "alertes_monitoring",
    "logs_jobs_airflow.csv": "logs_jobs_airflow"
}

def ingest_csv_to_postgres(file_path, table_name):
    """Lit un fichier CSV et l'insère de façon optimisée dans PostgreSQL."""
    if not os.path.exists(file_path):
        print(f"⚠️ Fichier ignoré (non trouvé) : {file_path}")
        return
    
    print(f"🚀 Début de l'ingestion : {file_path} -> Table '{table_name}'...")
    try:
        # Lecture du CSV avec Pandas
        df = pd.read_csv(file_path)
        
        # Insertion des données (mode append pour ne pas écraser la structure DDL existante)
        # chunksize permet de segmenter l'envoi pour les gros volumes (ex: capteurs, logs)
        df.to_sql(table_name, con=engine, if_exists='append', index=False, chunksize=500)
        
        print(f"✅ Ingestion réussie pour la table '{table_name}' ({len(df)} lignes insérées).")
    except Exception as e:
        print(f"❌ Erreur lors de l'ingestion de {file_path} : {e}")

if __name__ == "__main__":
    # Définis ici le chemin où se trouvent tes fichiers CSV sur ton Mac
    # Exemple : "./data/" si tes fichiers sont dans un sous-dossier data
    data_folder = "./csv/" 
    
    print("--- DÉBUT DU CHARGEMENT GLOBAL DE L'ENTREPÔT ---")
    
    # Étape critique : On charge d'abord les dimensions (tables de référence)
    # pour respecter les contraintes de clés étrangères (Foreign Keys) de SQL
    dimensions_prioritaires = [
        "usines_bloc3_propre.csv", 
        "produits_bloc3_propre.csv", 
        "clients_industriels_bloc3_propre.csv"
    ]
    
    for filename in dimensions_prioritaires:
        file_path = os.path.join(data_folder, filename)
        table = csv_to_table_mapping.get(filename)
        ingest_csv_to_postgres(file_path, table)
        
    # Ensuite, on charge le reste des fichiers (tables de faits et logs opérationnels)
    for filename, table in csv_to_table_mapping.items():
        if filename in dimensions_prioritaires:
            continue
        file_path = os.path.join(data_folder, filename)
        ingest_csv_to_postgres(file_path, table)
        
    print("--- FIN DU CHARGEMENT GLOBAL ---")