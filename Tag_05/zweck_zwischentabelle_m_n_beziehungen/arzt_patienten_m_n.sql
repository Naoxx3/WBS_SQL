CREATE DATABASE IF NOT EXISTS Arzt_Patienten_MN;
USE Arzt_Patienten_MN;
CREATE TABLE Aerzte (
    Arzt_ID INT PRIMARY KEY,
    Arzt_Name VARCHAR(100)
);

CREATE TABLE Patienten (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100)
);

-- Zwischentabelle
-- https://en.wikipedia.org/wiki/Associative_entity
CREATE TABLE Aerzte_Patienten (
    Arzt_ID INT,
    Patient_ID INT,
    PRIMARY KEY (Arzt_ID, Patient_ID), -- zusammengesetzter Primärschlüssel
    FOREIGN KEY (Arzt_ID) REFERENCES Aerzte(Arzt_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patienten(Patient_ID)
);

INSERT INTO Aerzte (Arzt_ID, Arzt_Name) VALUES
(1, 'Dr. Müller'),
(2, 'Dr. Schneider'),
(3, 'Dr. Schmidt');

INSERT INTO Patienten (Patient_ID, Patient_Name) VALUES
(1, 'Anna'),
(2, 'Peter'),
(3, 'Max'),
(4, 'Lisa');


INSERT INTO Aerzte_Patienten (Arzt_ID, Patient_ID) VALUES
(1, 1), -- Dr. Müller behandelt Anna
(1, 2), -- Dr. Müller behandelt Peter
(1, 3), -- Dr. Müller behandelt Max
(2, 1), -- Dr. Schneider behandelt Anna
(2, 4), -- Dr. Schneider behandelt Lisa
(3, 2), -- Dr. Schmidt behandelt Peter
(3, 4); -- Dr. Schmidt behandelt Lisa


--Ein Arzt kann selbstverständlich mehrere Patienten behandeln.
-- Ein Patient kann mehrere Ärzte besuchen.

/*
Neue zusätzliche Beispieldaten einfügen (mehr Patienten besuchen weitere Ärzte)
Wir fügen hinzu, dass:

Max zusätzlich zu Dr. Schmidt geht.
Anna nun auch zu Dr. Schmidt geht.
Lisa zusätzlich zu Dr. Müller geht.

*/


-- Neue zusätzliche Arzt-Patient-Beziehungen
INSERT INTO Aerzte_Patienten (Arzt_ID, Patient_ID) VALUES
(3, 3), -- Dr. Schmidt ↔ Max
(3, 1), -- Dr. Schmidt ↔ Anna
(1, 4); -- Dr. Müller ↔ Lisa
