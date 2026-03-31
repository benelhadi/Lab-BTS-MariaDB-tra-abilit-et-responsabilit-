#!/bin/bash
set -e

sudo service mariadb start
sleep 2
sudo mysql -e "SELECT VERSION();"

echo "Service MariaDB démarré."
