-- On se connecte a la database show
\c shows

-- On désactive la vérification des foreign Key
ALTER TABLE "user_follow_shows" DISABLE TRIGGER ALL;
ALTER TABLE "user_rate_shows" DISABLE TRIGGER ALL;
ALTER TABLE "user_watch_episodes" DISABLE TRIGGER ALL;

-- On copie depuis le fichier CSV user.csv les données dans la table users
COPY users(user_id,registration_date,firstname,lastname,email,password) FROM '/mnt/c/Workspace/csv/user.csv' DELIMITER ',' CSV HEADER;

-- On copie depuis le fichier CSV show.csv les données dans la table shows
COPY shows(show_id,name,description,release_year,genres,network) FROM '/mnt/c/Workspace/csv/show.csv' DELIMITER ',' CSV HEADER;

-- On copie depuis le fichier CSV episode.csv les données dans la table episodes
COPY episodes(episode_id,show_id,season,number,dates) FROM '/mnt/c/Workspace/csv/episode.csv' DELIMITER ',' CSV HEADER;

-- On copie depuis le fichier CSV user_follow_show.csv les données dans la table user_follow_shows
COPY user_follow_shows(user_id,show_id,follow_date) FROM '/mnt/c/Workspace/csv/user_follow_show.csv' DELIMITER ',' CSV HEADER;

-- On copie depuis le fichier CSV user_rate_show.csv les données dans la table user_rate_shows
COPY user_rate_shows(user_id,show_id,rating,rating_date) FROM '/mnt/c/Workspace/csv/user_rate_show.csv' DELIMITER ',' CSV HEADER;

-- On copie depuis le fichier CSV user_watch_episode.csv les données dans la table user_watch_episode
COPY user_watch_episodes(user_id,episode_id,watch_date) FROM '/mnt/c/Workspace/csv/user_watch_episode.csv' DELIMITER ',' CSV HEADER;

-- On réactive la vérification des foreign Key
ALTER TABLE "user_follow_shows" ENABLE TRIGGER ALL;
ALTER TABLE "user_rate_shows" ENABLE TRIGGER ALL;
ALTER TABLE "user_watch_episodes" ENABLE TRIGGER ALL;

-- On affiche la première ligne de la table users afin de vérifier que l'import marche
SELECT * FROM users LIMIT 1
