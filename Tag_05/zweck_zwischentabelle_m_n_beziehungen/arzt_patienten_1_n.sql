CREATE DATABASE IF NOT EXISTS Arzt_Patienten_Beispiel;
USE Arzt_Patienten_Beispiel;

CREATE TABLE Aerzte (
    Arzt_ID INT PRIMARY KEY,
    Arzt_Name VARCHAR(100)
);

CREATE TABLE Patienten (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Arzt_ID INT,
    FOREIGN KEY (Arzt_ID) REFERENCES Aerzte(Arzt_ID)
);
-- Diese Struktur erlaubt es aktuell nicht, dass ein Patient mehrere Ärzte besucht.
-- Jeder Patient kann nur einem Arzt zugeordnet werden.
-- Ein Arzt hingegen kann problemlos mehrere Patienten behandeln.
-- Die Beziehung zwischen den beiden Entitäten ("Aerzte" und "Patienten") ist 
    -- somit eine 1:n-Beziehung (1 Arzt : n Patienten).
    -- n: viele Einträge in der Tabelle Patienten, die auf denselben Arzt_ID verweisen


INSERT INTO Aerzte (Arzt_ID, Arzt_Name) VALUES
(1, 'Dr. Müller'),
(2, 'Dr. Schneider'),
(3, 'Dr. Schmidt');

INSERT INTO Patienten (Patient_ID, Patient_Name, Arzt_ID) VALUES
(1, 'Anna', 1),       -- Anna besucht Dr. Müller
(2, 'Peter', 1),      -- Peter besucht Dr. Müller
(3, 'Max', 2),        -- Max besucht Dr. Schneider
(4, 'Lisa', 3);       -- Lisa besucht Dr. Schmidt




/*
Beispiel für das zentrale Problem:
Angenommen, jetzt besucht Anna zusätzlich zu Dr. Müller noch Dr. Schneider.

Du versuchst, dies umzusetzen:
*/

-- Das folgende SQL ist nicht möglich, da Patient_ID eindeutig sein muss.
--  Ergebnis: Fehler, weil die Patient_ID bereits existiert!
INSERT INTO Patienten (Patient_ID, Patient_Name, Arzt_ID) VALUES
(1, 'Anna', 2); 





-- Alternativ könntest du die Patient-ID erhöhen:
INSERT INTO Patienten (Patient_ID, Patient_Name, Arzt_ID) VALUES
(5, 'Anna', 2);

/*
Jetzt entsteht folgendes Problem:
Anna existiert jetzt zweimal mit unterschiedlichen IDs.
Patientendaten sind redundant und können Inkonsistenzen erzeugen.

Falls sich die Telefonnummer oder Adresse von Anna ändern, musst du jetzt an
 mehreren Stellen dieselbe Information pflegen.
*/


