CREATE DATABASE coop_db;

DROP USER 'webapp';

CREATE USER 'webapp' @'%' IDENTIFIED BY 'abc123';

GRANT ALL PRIVILEGES ON coop_db.* TO 'webapp' @'%';

FLUSH PRIVILEGES;

USE coop_db;

-- DDL