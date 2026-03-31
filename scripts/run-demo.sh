#!/bin/bash
set -e

bash scripts/reset-db.sh

echo
echo "=== Etat initial de la table clients ==="
bash scripts/show-clients.sh

echo
echo "=== Test suppression avec operateur1 (doit échouer) ==="
mysql -u operateur1 -pOp1_007 -D centrecalldb -e "DELETE FROM clients WHERE id=1;" || true

echo
echo "=== Test suppression avec callmanager1 (doit réussir) ==="
mysql -u callmanager1 -pCm1_007 -D centrecalldb -e "DELETE FROM clients WHERE id=1;"

echo
echo "=== Etat final de la table clients ==="
bash scripts/show-clients.sh

echo
echo "=== Table d'audit ==="
bash scripts/show-audit.sh

echo
echo "Démo terminée."
