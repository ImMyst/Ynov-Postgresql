-- on ferme les connexions à la db shows
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE
    -- ne tue pas ma propre connexion
    pid <> pg_backend_pid()
    -- ne tue pas les connections aux autres bdd
    AND datname = 'ynov'
;

-- on repart à zéro
DROP DATABASE ynov;

-- création de la base
CREATE DATABASE ynov OWNER admin;

-- on se connecte à la base ynov
\c ynov;

-- On crée la table students
CREATE TABLE students (
  student_id serial PRIMARY KEY,
  firstname varchar (255) NOT NULL,
  lastname varchar (255) NOT NULL
);

-- On crée la table classes
CREATE TABLE classes (
  class_id serial PRIMARY KEY,
  name_class varchar (255) NOT NULL,
  professeur varchar (255) NOT NULL
);

-- On crée la table notes
CREATE TABLE notes (
  note_id serial PRIMARY KEY,
  note integer,
  coefficient integer,
  student_id integer REFERENCES students (student_id),
  class_id integer REFERENCES classes (class_id)
);

-- On insert pour chaque table des valeurs
INSERT INTO students(firstname,lastname) VALUES ('titouan','galvani');
INSERT INTO classes(name_class,professeur) VALUES ('Postgresql','Gabinou');
INSERT INTO notes(note,coefficient) VALUES ('14','2');