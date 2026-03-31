# Fiche enseignant - Lab MariaDB avec audit SQL

## Intitulé
Traçabilité, droits d'accès et responsabilité dans une base MariaDB

---

## Public visé
- BTS SIO SISR
- BTS CIEL
- formations réseaux / systèmes / cybersécurité de niveau BTS

---

## Durée conseillée
- TP technique : 1 h 30
- Analyse et restitution : 30 à 45 min

---

## Objectifs pédagogiques

### Objectifs techniques
- démarrer MariaDB ;
- initialiser une base ;
- manipuler deux comptes SQL ;
- observer les droits d'accès ;
- visualiser une table d'audit.

### Objectifs d'analyse
- comprendre la traçabilité des actions ;
- distinguer identité technique et responsabilité réelle ;
- analyser les limites d'une preuve purement technique.

### Objectifs professionnels
- sensibiliser aux bonnes pratiques de sécurité ;
- relier les droits d'accès à la sécurité du SI ;
- faire le lien entre journalisation et responsabilité.

---

## Prérequis
- notions de base sur les bases de données ;
- compréhension simple des comptes utilisateurs ;
- utilisation de base d'un terminal Linux.

---

## Déroulement conseillé

### Étape 1
L'étudiant démarre MariaDB et initialise la base.

### Étape 2
L'étudiant consulte la table `clients`.

### Étape 3
L'étudiant teste les droits de `operateur1`.

### Étape 4
L'étudiant teste les droits de `callmanager1`.

### Étape 5
L'étudiant vérifie la table `audit_clients`.

### Étape 6
L'étudiant répond aux questions d'analyse.

---

## Points pédagogiques à souligner
- les droits SQL ne sont pas identiques selon les rôles ;
- la journalisation technique permet de tracer les actions ;
- l'audit identifie le compte utilisé, pas toujours la personne physique ;
- le verrouillage de session et la discipline utilisateur sont essentiels.

---

## Résultats attendus
- `operateur1` ne peut pas supprimer ;
- `callmanager1` peut supprimer ;
- la suppression est visible dans la table `audit_clients` ;
- l'étudiant comprend les limites de la traçabilité.

---

## Difficultés possibles
- confusion entre compte SQL et utilisateur réel ;
- oubli de quitter le client MariaDB ;
- difficulté à interpréter la table d'audit.

---

## Exploitations possibles
Le lab peut être prolongé par :
- l'ajout d'un audit sur `UPDATE` ;
- l'ajout de journaux applicatifs ;
- une réflexion sur les comptes partagés ;
- une étude sur les moyens de preuve numériques.

---

## Documents associés
- `docs/02-consignes-etudiants.md`
- `docs/03-questions.md`
- `docs/05-grille-evaluation.md`
- `docs/06-correction-analyse.md`
