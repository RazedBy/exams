#!/bin/bash
# Script de sauvegarde automatique de l'entrepôt de données IndusFlow (C3.8)

BACKUP_DIR="./backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/indusflow_backup_${TIMESTAMP}.sql"

mkdir -p "${BACKUP_DIR}"

echo "🚀 Début de la sauvegarde de la base de données..."
docker exec -t indusflow_postgres pg_dump -U indusflow_admin -d indusflow_warehouse > "${BACKUP_FILE}"

if [ $? -eq 0 ]; then
    echo "✅ Sauvegarde réussie : ${BACKUP_FILE}"
    # Conservation des 7 dernières sauvegardes (purge des plus anciennes)
    find "${BACKUP_DIR}" -name "indusflow_backup_*.sql" -type f -mtime +7 -delete
    echo "🧹 Nettoyage des anciennes sauvegardes effectué."
else
    echo "❌ Erreur lors de la sauvegarde !"
    exit 1
fi
