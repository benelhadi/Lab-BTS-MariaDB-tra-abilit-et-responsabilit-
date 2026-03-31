# Consignes étudiants

## Objectif
Mettre en œuvre une base de données MariaDB, tester des droits d'accès et analyser la traçabilité des actions à l'aide d'une table d'audit.

## Étape 1 - Démarrer MariaDB
    bash scripts/start-mariadb.sh

## Étape 2 - Initialiser la base
    bash scripts/init-db.sh

## Étape 3 - Afficher la table clients
    bash scripts/show-clients.sh

## Étape 4 - Se connecter avec operateur1
    bash scripts/connect-operateur1.sh

Dans le client MariaDB, tester :
    SELECT * FROM clients;

Puis essayer :
    DELETE FROM clients WHERE id=2;

Observer le résultat.
Quitter avec :
    exit

## Étape 5 - Se connecter avec callmanager1
    bash scripts/connect-callmanager1.sh

Dans le client MariaDB, tester :
    SELECT * FROM clients;

Puis essayer :
    DELETE FROM clients WHERE id=2;

Observer le résultat.
Quitter avec :
    exit

## Étape 6 - Vérifier l'état final de la table
    bash scripts/show-clients.sh

## Étape 7 - Afficher la table d'audit
    bash scripts/show-audit.sh

## Étape 8 - Réinitialiser si besoin
    bash scripts/reset-db.sh

## Étape 9 - Répondre aux questions d'analyse
Voir `docs/03-questions.md`
