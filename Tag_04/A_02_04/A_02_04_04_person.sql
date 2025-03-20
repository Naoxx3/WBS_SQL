-- Create the database
CREATE DATABASE PersonDB;

-- Select the database
USE PersonDB;

-- Create the Person table
CREATE TABLE Person (
    PersonID INT AUTO_INCREMENT PRIMARY KEY,
    Vorname VARCHAR(50),
    Nachname VARCHAR(50),
    Strasse VARCHAR(100),
    Hausnummer INT,
    PLZ INT,
    Ort VARCHAR(50)
);



INSERT INTO Person (Vorname, Nachname, Strasse, Hausnummer, PLZ, Ort) VALUES
('Peter', 'Müller', 'Hauptstraße', 45, 10115, 'Berlin'),
('Anna', 'Schmidt', 'Bahnhofstraße', 4711, 20095, 'Hamburg'),
('Tom', 'Müller', 'Ringstraße', 123, 50667, 'Köln'),
('Sarah', 'Meier', 'Parkweg', 150, 80331, 'München'),
('Max', 'Mustermann', 'Dorfstraße', 99, 28195, 'Bremen'),
('Laura', 'Schulz', 'Waldweg', 250, 90402, 'Nürnberg'),
('Max', 'Max', 'Teststraße', 4711, 4711, 'Teststadt'),
('Anna', 'Anna', 'Gleichstraße', 222, 11111, 'Teststadt'),
('Felix', 'Schmidt', 'Hausstraße', 55555, 55555, 'Testdorf')
('Paul', 'Klein', 'Seestraße', 10, 12345, 'Hamburg'),
('Eva', 'Groß', 'Feldstraße', 5, 67890, 'Frankfurt'),
('Peter', 'Müller', 'Berliner Allee', 1500, 13597, 'Berlin'),
('Clara', 'Wolf', 'Musterstraße', 4712, 1, 'Stuttgart');
