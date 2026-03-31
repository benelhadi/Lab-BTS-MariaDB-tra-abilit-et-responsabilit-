DROP DATABASE IF EXISTS centrecalldb;
CREATE DATABASE centrecalldb;
USE centrecalldb;

CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    telephone VARCHAR(20),
    ville VARCHAR(50)
);

INSERT INTO clients (nom, prenom, telephone, ville) VALUES
('Dupont', 'Alice', '0600000001', 'Rabat'),
('Martin', 'Youssef', '0600000002', 'Casablanca'),
('Bernard', 'Sara', '0600000003', 'Fes'),
('Petit', 'Omar', '0600000004', 'Marrakech'),
('Robert', 'Lina', '0600000005', 'Tanger');
