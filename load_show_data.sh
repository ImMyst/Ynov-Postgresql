#!/bin/bash

# On appelle le fichier sql load_show_data.sql contenant toutes les commandes d'imports des fichiers CSV pour peupler la base de données
psql --username=admin -d shows -f ./sql/load_show_data.sql
