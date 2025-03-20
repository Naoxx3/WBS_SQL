CREATE DATABASE GrundstueckDB;
USE GrundstueckDB;

CREATE TABLE Grundstücke (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Breite INT NOT NULL,
    Laenge INT NOT NULL,
    Preis DECIMAL(10,2) NOT NULL,
    Besitzer VARCHAR(50) NOT NULL,
    Ort VARCHAR(50) NOT NULL
);

INSERT INTO Grundstücke (Breite, Laenge, Preis, Besitzer, Ort) VALUES
(10, 20, 30000.00, 'Mustermann', 'Bochum'),
(50, 30, 500000.00, 'Müller', 'Hamburg'),
(200, 100, 5000.00, 'Mustermann', 'Berlin'),
(300, 150, 1500000.00, 'Müller', 'Kiel'),
(250, 250, 1100000.00, 'Schmidt', 'Essen'),
(20, 30, 1500.00, 'Müller', 'Essen'),
(300, 200, 5000000.00, 'Mustermann', 'Kassel'),
(80, 120, 8000000.00, 'Schneider', 'Bielefeld'),
(250, 150, 700000.00, 'Müller', 'Bochum'),
(400, 350, 5500000.00, 'Müller', 'Kiel');
