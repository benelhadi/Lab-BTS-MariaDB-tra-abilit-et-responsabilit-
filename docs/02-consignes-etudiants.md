# TP - MariaDB, droits d'accès, audit et responsabilité

## 1. Objectif du TP

Mettre en œuvre une base de données MariaDB dans GitHub Codespaces afin de :
- consulter des données ;
- tester des droits d'accès différents selon les utilisateurs ;
- simuler une suppression ;
- analyser la table d'audit produite ;
- réfléchir à la traçabilité et à la responsabilité.

---

## 2. Contexte

L'entreprise dispose d'une base de données contenant une table de clients.
Deux profils utilisateurs accèdent à cette base :

- `operateur1` : opérateur de consultation
- `callmanager1` : responsable disposant de droits supplémentaires

Un mécanisme d'audit enregistre les suppressions dans une table dédiée.

L'objectif est d'observer :
- les différences de droits ;
- les traces laissées par les actions ;
- les limites de la traçabilité technique.

---

## 3. Travail demandé

### Étape 1 - Démarrer le serveur MariaDB
Exécuter :

    bash scripts/start-mariadb.sh

---

### Étape 2 - Initialiser la base de données
Exécuter :

    bash scripts/init-db.sh

Observer les comptes créés :
- `operateur1 / Op1_007`
- `callmanager1 / Cm1_007`

---

### Étape 3 - Afficher la table des clients
Exécuter :

    bash scripts/show-clients.sh

Observer le contenu de la table `clients`.

---

### Étape 4 - Tester le compte `operateur1`
Exécuter :

    bash scripts/connect-operateur1.sh

Dans le client MariaDB, saisir :

    SELECT * FROM clients;
    DELETE FROM clients WHERE id=2;
    exit

Observer le résultat obtenu.

---

### Étape 5 - Tester le compte `callmanager1`
Exécuter :

    bash scripts/connect-callmanager1.sh

Dans le client MariaDB, saisir :

    SELECT * FROM clients;
    DELETE FROM clients WHERE id=2;
    SELECT * FROM clients;
    exit

Observer le résultat obtenu.

---

### Étape 6 - Vérifier l'état final de la table clients
Exécuter :

    bash scripts/show-clients.sh

Comparer avec l'état initial.

---

### Étape 7 - Afficher la table d'audit
Exécuter :

    bash scripts/show-audit.sh

Observer les informations enregistrées :
- type d'action ;
- utilisateur SQL ;
- identifiant du client supprimé ;
- date ;
- données de l'enregistrement supprimé.

---

### Étape 8 - Réinitialiser si nécessaire
Exécuter :

    bash scripts/reset-db.sh

---

## 4. Vérifications attendues

### Avec `operateur1`
- la commande `SELECT` fonctionne ;
- la commande `DELETE` est refusée.

### Avec `callmanager1`
- la commande `SELECT` fonctionne ;
- la commande `DELETE` est autorisée.

### Dans la table d'audit
Une suppression effectuée avec `callmanager1` doit produire une trace.

---

## 5. Questions d'analyse

Répondre aux questions du fichier :

`docs/03-questions.md`

---

## 6. Livrables attendus

### Livrable 1 - Traces techniques
- commandes exécutées ;
- résultats observés ;
- sortie de `show-clients.sh` ;
- sortie de `show-audit.sh`.

### Livrable 2 - Réponses d'analyse
Réponses argumentées aux questions.

### Livrable 3 - Conclusion
Une conclusion courte expliquant :
- ce que le lab démontre ;
- l'intérêt de l'audit ;
- les limites de la traçabilité.

---

## 7. Conclusion attendue

L'étudiant doit montrer que :
- tous les utilisateurs n'ont pas les mêmes droits ;
- les actions peuvent être tracées techniquement ;
- l'audit enregistre le compte utilisé ;
- cela ne suffit pas toujours à identifier avec certitude la personne physique réellement responsable ;
- des mesures complémentaires sont nécessaires.
