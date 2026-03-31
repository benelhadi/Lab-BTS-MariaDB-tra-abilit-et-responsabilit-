#!/bin/bash
set -e

bash scripts/start-mariadb.sh

mysql -u callmanager1 -pCm1_007 -D centrecalldb
