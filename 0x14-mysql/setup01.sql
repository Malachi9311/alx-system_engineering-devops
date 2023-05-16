CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON * . * TO 'holberton_user'@'localhost';
CREATE DATABASE IF NOT EXISTS tyrell_corp;
USE tyrell_corp;
CREATE  TABLE nexus6 (id INT PRIMARY KEY, name VARCHAR(100));
INSERT INTO nexus6 (id, name) VALUES (1, 'Leon');

CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY 'replica';
GRANT REPLICATION SLAVE ON * . * TO 'replica_user'@'%';
FLUSH PRIVILEGES;
