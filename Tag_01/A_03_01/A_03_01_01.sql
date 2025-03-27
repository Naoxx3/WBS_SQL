


USE Geld_her;

-- a)
SELECT Abrechnung.Datum, Kunde.Kunde_ID, Kunde.Nachname 
FROM Kunde, Abrechnung 
WHERE Kunde.Kunde_ID = Abrechnung.Kunde_ID 
ORDER BY Abrechnung.Datum DESC 
LIMIT 10;
    
-- b)

SELECT Produkt_Name, Euro_Preis, Hersteller_Name
FROM Produkt, Hersteller
WHERE Produkt.Hersteller_ID = Hersteller.Hersteller_ID
AND Euro_Preis<1000
ORDER BY Hersteller_Name, Produkt_Name;

-- c)

SELECT DISTINCT Kunde.Kunde_ID,Vorname, Nachname, Produkt.Produkt_Name
FROM Kunde, Abrechnung, Abrechnung_Produkt, Produkt
WHERE Kunde.Kunde_ID = Abrechnung.Kunde_ID
AND Abrechnung.Abrechnung_ID = Abrechnung_Produkt.Abrechnung_ID
AND Abrechnung_Produkt.Produkt_ID = Produkt.Produkt_ID
AND Produkt_Name = "tool 2.0"
ORDER BY  Nachname, Vorname;


-- d)

SELECT DISTINCT Produkt_Name 
FROM Produkt, Abrechnung, Abrechnung_Produkt
WHERE Produkt.Produkt_ID = Abrechnung_Produkt.Produkt_ID
AND Abrechnung.Abrechnung_ID = Abrechnung_Produkt.Abrechnung_ID
AND Datum = "2021-10-16"
ORDER BY Produkt_Name LIMIT 2, 3;

# Kein Ergebnis, weil es nur 2 Produkte gibt die am 16.10.2021 verkauft wurden und LIMIT 2,3 bedeutet, 
# dass die 3. und 4. Zeile ausgegeben werden soll, aber es gibt keine 3. und 4. Zeile

-- e)

SELECT DISTINCT Datum, Spedition.Spedition_Name, Hersteller.Hersteller_Name
FROM Abrechnung, Spedition, Produkt, Abrechnung_Produkt, Hersteller
WHERE Abrechnung.Abrechnung_ID = Abrechnung_Produkt.Abrechnung_ID
AND Abrechnung_Produkt.Produkt_ID = Produkt.Produkt_ID
AND Produkt.Hersteller_ID = Hersteller.Hersteller_ID
AND Hersteller.Spedition_ID = Spedition.Spedition_ID
AND Spedition.Spedition_Name = "Speedvan GmbH"
ORDER BY Abrechnung.Datum DESC LIMIT 100;