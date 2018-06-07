#!/bin/bash

# On modifie la timezone pour qu'elle corresponde à celle de Paris
psql --username admin -c "ALTER SYSTEM SET timezone TO 'Europe/Paris';" 
