#!/bin/bash
set -e

if [ $# -ne 2 ]; then
  echo "Usage : bash scripts/delete-client.sh <utilisateur> <id_client>"
  echo "Exemple : bash scripts/delete-client.sh callmanager1 3"
  exit 1
fi

USER_SQL="$1"
CLIENT_ID="$2"

if [ "$USER_SQL" = "operateur1" ]; then
  PASS="Op1_007"
elif [ "$USER_SQL" = "callmanager1" ]; then
  PASS="Cm1_007"
else
  echo "Utilisateur inconnu."
  exit 1
fi

bash scripts/start-mariadb.sh

mysql -u "$USER_SQL" -p"$PASS" -D centrecalldb -e "DELETE FROM clients WHERE id=$CLIENT_ID;"
echo "Suppression demandée par $USER_SQL sur le client id=$CLIENT_ID"
