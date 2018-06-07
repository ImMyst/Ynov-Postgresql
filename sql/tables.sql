-- on ferme les connexions à la db shows
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE
    -- ne tue pas ma propre connexion
    pid <> pg_backend_pid()
    -- ne tue pas les connections aux autres bdd
    AND datname = 'shows'
;

-- on repart à zéro
DROP DATABASE shows;

-- création de la base
CREATE DATABASE shows OWNER admin;

-- on se connecte à la base show
\c shows;

-- Crée l'extension pgcrypto qui gère le cryptage des mots de passe
CREATE EXTENSION pgcrypto;

-- On crée la table users
CREATE TABLE users (
  user_id serial PRIMARY KEY,
  registration_date timestamp NOT NULL,
  firstname varchar (255) NOT NULL,
  lastname varchar (255) NOT NULL,
  email varchar (355) UNIQUE NOT NULL,
  password varchar (255) NOT NULL
);

-- On crée la table shows
CREATE TABLE shows (
  show_id serial PRIMARY KEY,
  name varchar (255) NOT NULL,
  description text,
  release_year INT,
  genres text,
  network text
);

-- On crée la table episodes
CREATE TABLE episodes (
  episode_id serial PRIMARY KEY,
  show_id integer REFERENCES shows (show_id),
  season integer,
  number integer,
  dates timestamp 
);

-- On crée la table de jointure user_follow_shows
CREATE TABLE user_follow_shows (
  user_id serial REFERENCES users (user_id),
  show_id serial REFERENCES shows (show_id),
  follow_date date NOT NULL
);

-- On crée la table de jointure user_rate_shows
CREATE TABLE user_rate_shows (
  user_id serial REFERENCES users (user_id),
  show_id serial REFERENCES shows (show_id),
  rating integer,
  rating_date date
);

-- On crée la table de jointure user_watch_episodes
CREATE TABLE user_watch_episodes (
  user_id serial REFERENCES users (user_id),
  episode_id serial REFERENCES episodes (episode_id),
  watch_date date
);