#!/bin/bash

# On appelle le fichier sql read_only.sql contenant toutes les commandes de la la création d'un role en lecture seule et un utilisateur appartenant à ce groupe 

psql --username=admin -d shows -f ./sql/read_only.sql