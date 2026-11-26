CREATE DATABASE IF NOT EXISTS PCdatabaseflask;
USE PCdatabaseflask;

CREATE USER 'linuss'@'%' IDENTIFIED BY '6548';

GRANT ALL PRIVILEGES ON PCdatabaseflask.* TO 'linuss'@'%';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'linuss'@'%';

EXIT;

mariadb -u linuss -p

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
password_hash VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, password_hash)
VALUES
('linusman', 'linus@example.com', 'krok}987653222yourhashedpasswordexamplehere8503045');




