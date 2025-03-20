
#Aufgabe_02_02_03u04_c_1

USE A_02_02_03u04;

# 1.
ALTER TABLE Stadt RENAME Ort;

# 2.
ALTER TABLE Ort CHANGE Stadtname Ortname VARCHAR(255) NOT NULL;

# 3. 
ALTER TABLE Ort ADD Anzahl_Einwohner INT(11) NOT NULL;

# 4.
ALTER TABLE Postbote DROP Vorname;

# 5.
ALTER TABLE Postbote ADD Ort_ID INT(11) NOT NULL;
ALTER TABLE Postbote ADD FOREIGN KEY(Ort_ID) REFERENCES Ort(Stadt_ID);
#(HINWEIS: In der mittlerweile umbenannten Tabelle "Ort" (ehemals "Stadt") heißt der Primärschlüssel immer noch "Stadt_ID")