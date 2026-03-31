#!/bin/bash
set -e

bash scripts/start-mariadb.sh

mysql -u operateur1 -pOp1_007 -D centrecalldb
