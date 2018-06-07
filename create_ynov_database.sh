#!/bin/bash

# On appelle le fichier sql ynov.sql contenant toutes les commandes de la création de la base de données Ynov
psql --username=admin -f ./sql/ynov.sql