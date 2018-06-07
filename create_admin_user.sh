#!/bin/bash

# On crée un superutilisateur admin qui a pour password admin42
sudo -u postgres psql -c "CREATE ROLE admin LOGIN PASSWORD 'admin42' SUPERUSER"
psql --username=admin --password

# # On crée une database admin qui a pour propriétaire l'utilisateur admin
sudo -u postgres psql -c "CREATE DATABASE admin OWNER = admin"
