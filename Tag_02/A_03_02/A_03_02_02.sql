#A_03_02_02


#a)
SELECT Abrechnung_ID,Datum,Vorname,Nachname
FROM Kunde LEFT JOIN Abrechnung ON Kunde.Kunde_ID=Abrechnung.Kunde_id;

#b)
SELECT Abrechnung.Abrechnung_ID,Produkt_ID
FROM Abrechnung LEFT JOIN Abrechnung_Produkt ON Abrechnung.Abrechnung_ID=Abrechnung_Produkt.Abrechnung_ID;

#c)
SELECT Abrechnung_Produkt.Abrechnung_ID,Produkt.Produkt_ID
FROM Abrechnung_Produkt RIGHT JOIN Produkt ON Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id;

#d)
SELECT Produkt_Name,Hersteller_Name
FROM Produkt RIGHT JOIN Hersteller ON Produkt.Hersteller_ID=Hersteller.Hersteller_ID;

#e)
SELECT Hersteller_Name,Spedition_Name
FROM Hersteller RIGHT JOIN Spedition ON Hersteller.Spedition_ID=Spedition.Spedition_ID;