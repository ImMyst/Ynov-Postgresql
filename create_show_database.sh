#!/bin/bash

# On appelle le fichier sql tables.sql contenant toutes les commandes de la création de la base de données shows
psql --username=admin -f ./sql/tables.sql
