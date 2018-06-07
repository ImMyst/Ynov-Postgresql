-- On se connecte a la database shows
\c shows

-- On remplace les mots de passe en clair par des mots de passe cryptés
UPDATE users SET password = crypt(password, gen_salt('bf'));

-- On affiche la première ligne de la table users
SELECT * FROM users LIMIT 1;

-- On affiche le password crypté correspondant au password en clair "nonsimilique641" trouvé dans la base de données
SELECT password FROM users WHERE password = crypt('nonsimilique641', password);