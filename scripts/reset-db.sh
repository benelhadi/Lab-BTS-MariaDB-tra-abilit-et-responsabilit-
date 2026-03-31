#!/bin/bash
set -e

bash scripts/start-mariadb.sh

sudo mysql < sql/04-reset-data.sql
sudo mysql < sql/02-create-users.sql

echo "Base réinitialisée."
