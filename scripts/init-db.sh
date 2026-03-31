#!/bin/bash
set -e

bash scripts/start-mariadb.sh

sudo mysql < sql/01-create-db.sql
sudo mysql < sql/02-create-users.sql
sudo mysql < sql/03-seed-data.sql
sudo mysql < sql/05-audit.sql

echo "Base de données initialisée."
echo "Utilisateurs créés :"
echo "- operateur1 / Op1_007"
echo "- callmanager1 / Cm1_007"
echo "Audit SQL activé."
