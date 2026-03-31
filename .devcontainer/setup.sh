#!/bin/bash
set -e

sudo rm -f /etc/apt/sources.list.d/yarn.list || true
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server mariadb-client tree nano vim

chmod +x scripts/*.sh || true
chmod +x .devcontainer/*.sh || true

mkdir -p workspace/preuves

echo "Environnement MariaDB prêt."
mysql --version
