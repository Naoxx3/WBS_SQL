#A_02_03_04
USE Geld_her;
#a)
INSERT INTO Kunde(Vorname,Nachname,Email) VALUES ("Stefania","Pace","stef@123");

#b)
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM Kunde WHERE Nachname="Myrnow";
SET FOREIGN_KEY_CHECKS = 1;


#c)
DELETE FROM Kunde WHERE Kunde_ID=6;


#d)
INSERT INTO Abrechnung(Kunde_ID,Datum) VALUES (2,CURDATE());

#e)
DELETE FROM Abrechnung WHERE Datum < "2022-02-01";
# Foreign Key wird wahrscheinlich noch von einer anderen Tabelle genutzt, deshalb nicht mit aktiven Foreign Key Checks arbeiten,
# sehe b)

#f)
UPDATE Spedition SET Spedition_Name="Schnell und gut" WHERE Spedition_ID=2;

#g)
DELETE FROM Spedition;
# Foreign Key wird wahrscheinlich noch von einer anderen Tabelle genutzt, deshalb nicht mit aktiven Foreign Key Checks arbeiten,
# sehe b)
#h)
DELETE FROM Spedition WHERE Spedition_ID=6;
#Die Spedition "Ganzal Lein" (ID:6) kann trotz FK-Check gelöscht werden, da sich kein FK (aus Hersteller) auf sie bezieht.

#i)
UPDATE Hersteller SET Hersteller_Name="Abrakadabra", Spedition_ID=5 WHERE Hersteller_ID=2;

#j)
UPDATE Produkt SET Hersteller_ID=10 WHERE Produkt_ID=3;
# Wert existiert wahrscheinlich nicht in der Tabelle, deshalb funktioniert das nicht mit aktiver FK beschränkung
#k)
TRUNCATE TABLE Abrechnung_Produkt;
