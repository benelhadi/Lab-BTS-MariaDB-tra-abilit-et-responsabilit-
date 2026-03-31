#!/bin/bash
set -e

bash scripts/start-mariadb.sh

sudo mysql -D centrecalldb -e "SELECT * FROM audit_clients ORDER BY audit_id;"
