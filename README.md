# 🏭 IndusFlow Data Warehouse & Pipeline Orchestration

Ce projet implémente un entrepôt de données complet pour la plateforme industrielle **IndusFlow**. Il comprend l'infrastructure conteneurisée, la définition du schéma de la base de données, des scripts d'ingestion manuelle et un pipeline d'orchestration de données avec Apache Airflow.

---

## 🏗️ Architecture Technique

L'infrastructure est entièrement conteneurisée à l'aide de **Docker Compose** et se compose des services suivants :

*   **Entrepôt de Données (PostgreSQL 16)** : Base de données relationnelle stockant les dimensions, les faits et les métriques opérationnelles.
*   **Staging / Stockage Brut (MinIO)** : Stockage d'objets compatible S3 pour stocker les fichiers CSV bruts et les données de staging.
*   **Calcul Distribué (Apache Spark 3.5)** : Cluster Spark (Master & Worker) prêt pour le traitement de volumes de données massifs.
*   **Orchestration (Apache Airflow 2.9)** : Ordonnanceur (Scheduler) et interface web (Webserver) pour gérer et surveiller les pipelines de données.

---

## 📊 Modèle de Données (PostgreSQL)

Le schéma de base de données défini dans [init_schema.sql](file:///Users/leo/src/exams/init_schema.sql) suit un modèle relationnel optimisé pour l'analyse industrielle :

### 1. Dimensions (Référentiels)
*   `usines` : Liste des usines de production avec leur localisation.
*   `produits` : Catalogue des produits fabriqués et leurs coûts unitaires.
*   `clients_industriels` : Répertoire des clients et de leurs secteurs d'activité.

### 2. Table de Faits
*   `cycles_production` : Table centrale enregistrant chaque cycle de production, liée aux usines, produits et clients.

### 3. Tables Opérationnelles et IoT
*   `etapes_fabrication` : Détail des étapes de fabrication de chaque cycle de production.
*   `capteurs_machines` : Données de télémétrie des machines (température, vibrations, pression).
*   `cameras_qualite` : Événements de détection de défauts par vision par ordinateur.
*   `logs_erreurs_machines` : Historique des anomalies et des résolutions de pannes.
*   `planning_production` : Planification prévisionnelle de la production.
*   `pieces_detachees` : Gestion des stocks et réapprovisionnement de pièces de rechange.
*   `maintenance_machines` : Suivi des interventions de maintenance (préventive/corrective).

### 4. Sécurité et Supervision
*   `acces_utilisateurs` : Logs de connexion et habilitations de sécurité.
*   `alertes_monitoring` : Historique des alertes d'infrastructure.
*   `logs_jobs_airflow` : Métriques d'exécution des DAGs.

---

## 🚀 Démarrage Rapide

### 1. Prérequis
Assurez-vous d'avoir installé sur votre machine :
*   [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)
*   Python 3.13 (ou version compatible) avec `pip` et `pyenv`

### 2. Configuration
Créez ou modifiez le fichier [.env](file:///Users/leo/src/exams/.env) à la racine du projet :
```env
# PostgreSQL Configuration
POSTGRES_USER=indusflow_admin
POSTGRES_PASSWORD=SecurePassword2026!
POSTGRES_DB=indusflow_warehouse

# MinIO Configuration
MINIO_ROOT_USER=minio_admin
MINIO_ROOT_PASSWORD=MinioSecretPassword2026!

# Versions
AIRFLOW_VERSION=2.9.2
POSTGRES_VERSION=16

# Configuration d'Apache Airflow Admin
AIRFLOW_ADMIN_USER=admin
AIRFLOW_ADMIN_PASSWORD=admin
```

### 3. Démarrage de l'Infrastructure
Lancez les services Docker en arrière-plan :
```bash
docker compose up -d
```

---

## 📥 Ingestion & Pipeline de Données

Le projet propose deux approches pour charger les données CSV situées dans le dossier `/csv` :

### Option A : Ingestion Manuelle (Script CLI)
Un script Python autonome ([ingest_data.py](file:///Users/leo/src/exams/ingest_data.py)) permet d'injecter rapidement les données locales dans la base PostgreSQL :
```bash
# Installation des dépendances requises
pip install pandas sqlalchemy psycopg2-binary python-dotenv

# Lancement du chargement global
python ingest_data.py
```
> [!NOTE]
> Le script charge les tables dans un ordre strict afin de respecter les contraintes de clés étrangères (dimensions en premier, puis table de faits, puis logs opérationnels).

### Option B : Ingestion Orchestrée (Apache Airflow)
Le DAG d'orchestration [pipeline_ingest.py](file:///Users/leo/src/exams/dags/pipeline_ingest.py) gère le flux de données complet de manière planifiée et robuste :
1. **Initialisation** : Exécution de [init_schema.sql](file:///Users/leo/src/exams/init_schema.sql) pour créer la structure de l'entrepôt si nécessaire.
2. **Ingestion Parallèle des Dimensions** : Chargement de `usines`, `produits` et `clients_industriels` en parallèle.
3. **Chargement de la Table de Faits** : Ingestion de `cycles_production` après validation des dimensions.
4. **Ingestion Parallèle des Tables Opérationnelles** : Chargement des logs capteurs, étapes et erreurs en parallèle.

---

## 🔍 Validation des Données

Pour vérifier la volumétrie des données chargées dans votre entrepôt, utilisez le script de validation [verify_ingest.py](file:///Users/leo/src/exams/verify_ingest.py) :
```bash
python verify_ingest.py
```

### Accès aux consoles d'administration
*   **Portail Airflow** : `http://localhost:8080`
*   **Console MinIO** : `http://localhost:9001` (Console) / `http://localhost:9000` (API S3)
*   **Spark Master UI** : `http://localhost:8081`
*   **Base de Données PostgreSQL** : accessible sur `localhost:5432` avec les identifiants configurés dans le fichier `.env`.
