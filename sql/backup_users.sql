-- On se connecte à la database shows
\c shows

-- On récupère dans un fichier CSV toutes la table users pour créer un backup
COPY (SELECT * FROM users) TO '/mnt/c/Workspace/csv/backup_users.csv' DELIMITER ',' HEADER CSV; 