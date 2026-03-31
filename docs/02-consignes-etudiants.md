# Consignes étudiants

## Objectif
Mettre en œuvre une base de données MariaDB et analyser les actions réalisées par différents utilisateurs.

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

## Étape 7 - Réinitialiser si besoin
    bash scripts/reset-db.sh

## Étape 8 - Répondre aux questions d'analyse
Voir `docs/03-questions.md`
