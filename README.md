# lab-bts-mariadb-tracabilite-codespaces

## Objectif
Mettre en œuvre un environnement MariaDB dans GitHub Codespaces afin de :
- créer une base de données ;
- manipuler des utilisateurs SQL ;
- tester les droits d'accès ;
- simuler un incident de suppression ;
- analyser la traçabilité et la responsabilité.

## Lancement rapide

Dans le terminal :

    bash scripts/run-demo.sh

## Étapes détaillées

    bash scripts/start-mariadb.sh
    bash scripts/init-db.sh
    bash scripts/show-clients.sh
    bash scripts/connect-operateur1.sh
    bash scripts/connect-callmanager1.sh

## Documents disponibles
- `docs/01-contexte.md`
- `docs/02-consignes-etudiants.md`
- `docs/03-questions.md`
- `docs/04-correction-formateur.md`
- `docs/05-grille-evaluation.md`
