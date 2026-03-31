#!/bin/bash
set -e

bash scripts/start-mariadb.sh

sudo mysql < sql/04-reset-data.sql
sudo mysql < sql/02-create-users.sql
sudo mysql < sql/05-audit.sql

echo "Base réinitialisée."
echo "Audit SQL réactivé."
