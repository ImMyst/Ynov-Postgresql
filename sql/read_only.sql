-- On REVOKE tous les privileges précedents et on créer un role 'readonly' en lecture seule.

DROP OWNED BY readonly;

REVOKE ALL PRIVILEGES ON SCHEMA public FROM readonly;

REVOKE ALL ON ALL TABLES IN SCHEMA public FROM readonly;

REVOKE CONNECT ON DATABASE shows FROM readonly;

REVOKE readonly FROM reader;
DROP ROLE reader;
DROP ROLE readonly;

CREATE ROLE readonly;

GRANT USAGE ON SCHEMA public TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;

-- On créer ensuite un utilisateur 'reader' appartenant à ce groupe 'readonly'

CREATE ROLE reader WITH PASSWORD 'reader42';
GRANT readonly TO reader;