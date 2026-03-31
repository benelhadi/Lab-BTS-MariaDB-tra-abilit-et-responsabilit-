CREATE DATABASE IF NOT EXISTS centrecalldb;
USE centrecalldb;

CREATE TABLE IF NOT EXISTS clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    telephone VARCHAR(20),
    ville VARCHAR(50)
);
