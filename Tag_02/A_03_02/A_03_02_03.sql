#A_03_02_03


#a)
SELECT DISTINCT Produkt_Name,Vorname,Nachname
FROM Kunde LEFT JOIN Abrechnung ON Kunde.Kunde_ID=Abrechnung.Kunde_id
     LEFT JOIN Abrechnung_Produkt ON Abrechnung.Abrechnung_ID=Abrechnung_Produkt.Abrechnung_ID 
     LEFT JOIN Produkt ON Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id;
	 
#b)
SELECT DISTINCT Produkt_Name,Vorname,Nachname
FROM Kunde RIGHT JOIN Abrechnung ON Kunde.Kunde_ID=Abrechnung.Kunde_id
     RIGHT JOIN Abrechnung_Produkt ON Abrechnung.Abrechnung_ID=Abrechnung_Produkt.Abrechnung_ID 
     RIGHT JOIN Produkt ON Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id;
	 
#c)
SELECT DISTINCT Datum,Spedition_Name
FROM Abrechnung RIGHT JOIN Abrechnung_Produkt ON Abrechnung.Abrechnung_ID=Abrechnung_Produkt.Abrechnung_ID
     RIGHT JOIN Produkt ON Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id
     RIGHT JOIN Hersteller ON Produkt.Hersteller_ID=Hersteller.Hersteller_ID
     RIGHT JOIN Spedition ON Hersteller.Spedition_ID=Spedition.Spedition_ID;
	 
#d) Siehe die detaillierte Lösung und Erklärung in A_03_02_03_d_JOIN-Varianten_mit_Bedingungen.pdf