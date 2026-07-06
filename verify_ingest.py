import os
from sqlalchemy import create_engine, text
from dotenv import load_dotenv

load_dotenv()

POSTGRES_USER = os.getenv("POSTGRES_USER", "indusflow_admin")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")
POSTGRES_DB = os.getenv("POSTGRES_DB", "indusflow_warehouse")

DATABASE_URL = f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}@localhost:5432/{POSTGRES_DB}"
engine = create_engine(DATABASE_URL)

tables = [
    "usines", "produits", "clients_industriels", "cycles_production",
    "etapes_fabrication", "capteurs_machines", "cameras_qualite",
    "logs_erreurs_machines", "planning_production", "pieces_detachees",
    "maintenance_machines", "acces_utilisateurs", "alertes_monitoring",
    "logs_jobs_airflow", "spark_sensor_aggregates", "spark_error_aggregates"
]

print("--- BILAN DE LA VOLUMÉTRIE DE L'ENTREPÔT ---")
with engine.connect() as connection:
    for table in tables:
        try:
            query = text(f"SELECT COUNT(*) FROM {table};")
            result = connection.execute(query).scalar()
            print(f"🔹 Table '{table}' : {result} lignes insérées.")
        except Exception as e:
            print(f"❌ Impossible de lire la table '{table}' : {e}")