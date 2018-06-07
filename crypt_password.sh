#!/bin/bash

# On appelle le fichier sql crypt_password.sql contenant toutes les commandes qui permettent de crypter les mots de passe des utilisateurs
psql --username=admin -f ./sql/crypt_password.sql
