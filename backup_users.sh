#!/bin/bash

# On appelle le fichier sql backup_users.sql contenant toutes les commandes permettant la récupération de la table users dans un fichier CSV
psql --username=admin -f ./sql/backup_users.sql
