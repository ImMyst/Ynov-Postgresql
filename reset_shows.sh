#!/bin/bash

# On appelle tous les scripts pour créer notre database shows

# On vérifie la timezone
./set_configuration.sh

# On crée la base de donnée shows
./create_show_database.sh

# On importe les données CSV
./load_show_data.sh

# On crypte les mots de passes des utilisateurs
./crypt_password.sh