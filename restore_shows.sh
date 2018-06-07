#!/bin/bash

psql --username=admin -f ./tables.sql

pg_restore --username=admin --dbname=shows ./shows