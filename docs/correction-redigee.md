# Correction rédigée - Analyse du lab MariaDB avec audit

## Différence entre les droits de operateur1 et callmanager1
operateur1 dispose uniquement du droit de consultation (SELECT). callmanager1 dispose du droit de consultation (SELECT) et du droit de suppression (DELETE).  
Cela montre que les utilisateurs n'ont pas tous les mêmes habilitations.

## Pourquoi operateur1 peut consulter mais pas supprimer
Parce que les privilèges SQL accordés à operateur1 ne comprennent pas DELETE. Le serveur MariaDB applique donc une restriction d'accès.

## Pourquoi callmanager1 peut supprimer
Parce que les privilèges SQL de callmanager1 incluent explicitement l'autorisation DELETE sur la table clients.

## Que devient la ligne supprimée
Elle disparaît de la table clients. Cependant, une trace de cette suppression est enregistrée dans la table audit_clients.

## Contenu de la table audit_clients
La table d'audit enregistre :
- le type d'action ;
- l'utilisateur SQL ;
- l'identifiant du client supprimé ;
- les données du client supprimé ;
- la date et l'heure de l'action.

## Colonne identifiant le compte SQL
La colonne sql_user permet de savoir quel compte SQL a réalisé l'action.

## Intérêt de cette trace
Cette trace permet :
- de reconstituer l'action ;
- d'identifier le compte utilisé ;
- de conserver une preuve technique ;
- d'aider à l'analyse d'un incident.

## Cas d'une session laissée ouverte
Si une autre personne utilise une session callmanager1 laissée ouverte, l'audit enregistrera malgré tout callmanager1. Le système ne voit que le compte connecté, pas la personne physique présente devant le poste.

## Limite de la preuve technique
La preuve technique montre quel compte a été utilisé, mais elle ne garantit pas à elle seule l'identité réelle de la personne responsable. C'est pourquoi une trace technique n'est pas toujours suffisante.

## Mesures recommandées
Il faut recommander :
- le verrouillage automatique des sessions ;
- l'interdiction de partager les comptes ;
- la séparation stricte des rôles ;
- des mots de passe robustes ;
- la journalisation des actions ;
- la sensibilisation des utilisateurs ;
- des contrôles organisationnels.

## Importance de la séparation des rôles
La séparation des rôles limite les risques :
- d'erreur ;
- d'abus ;
- de compromission ;
- d'accès non justifié à certaines fonctions.

## Importance du verrouillage de session
Le verrouillage de session empêche qu'un tiers utilise un compte déjà ouvert. C'est une mesure essentielle de sécurité et de traçabilité.

## Preuves techniques conservables
On peut conserver :
- la table d'audit ;
- les journaux système ;
- les journaux MariaDB ;
- les captures d'écran ;
- les exports de requêtes ;
- la date et l'heure des actions.

## Différence entre identité technique et responsabilité réelle
L'identité technique correspond au compte utilisé (sql_user). La responsabilité réelle correspond à la personne physique ayant effectué l'action. Le lab montre que ces deux éléments peuvent être différents si les pratiques de sécurité ne sont pas respectées.

## Conclusion attendue
Le lab montre que la gestion des droits SQL et la journalisation permettent de renforcer la traçabilité. Cependant, la traçabilité technique doit être complétée par des mesures organisationnelles pour établir plus solidement la responsabilité.

---

## Correction formateur

### Éléments attendus
- base initialisée correctement ;
- table clients visible ;
- operateur1 peut lire mais pas supprimer ;
- callmanager1 peut lire et supprimer ;
- l'étudiant comprend la différence entre identité technique et responsabilité réelle.

### Points pédagogiques importants
- les droits SQL contrôlent les actions possibles ;
- si une session reste ouverte, l'action est attribuée au compte connecté ;
- cela ne prouve pas forcément qui était physiquement devant le poste ;
- la traçabilité doit être complétée par des mesures organisationnelles.
