# PostgreSQL Challenges

## A propos

Scripts d'installation et configuration de PostgreSQL pour initialiser et peupler une base de données, crypter des mots de passes, créer des utilisateurs ...

## Vérification

Pour vérifier que **tous** les scripts fonctionnent, lancer le script `reset_shows` qui **executera** tous les scripts à la suite.

## Liste de tous les scripts

* Installation de PostgreSQL `postgres-setup`.
* Création de l'utilisateur admin `create_admin_user`.
* Modification de la configuration de PostgreSQL `set_configuration`.
* Création des tables du jeu de données "séries" `create_show_database`.
* Peuplement depuis les CSV `load_show_date`.
* Cryptage des mots de passe `crypt_password`.
* Création d'un ROLE en lecture seule `read_only`.
* Création de la base de données Ynov `create_ynov_datebase`.
* Backup de la table users `backup_users`.
* Script de reset `reset_shows`.
* Backup de la database shows `backup_shows`.
* Restauration de la database shows `restore_shows`.

## Modifications requises

Le chemin absolu est `/mnt/c/Workspace` pour les fichiers SQL suivants :

* `backup_users`.
* `load_show_data`.

Il suffit donc de le changer par le votre pour pouvoir le faire accéder au bon dossier/fichier.

## A propos de nous

Fait avec ❤️ par :
> Alexandra RAMADOUR & Titouan GALVANI
> -Ornithorynque Team
