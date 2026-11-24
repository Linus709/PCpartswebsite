CREATE DATABASE PCdatabaseflask;
CREATE USER 'pcpartsdatabase'@'localhost' IDENTIFIED BY '6548';
GRANT ALL PRIVILEGES ON pcpartsdatabase.* TO 'linus'@'localhost';
FLUSH PRIVILEGES;
