#A_03_04_01

#a)
SELECT 
	Kunde.Kunde_ID, 
	Nachname, 
	MAX(Abrechnung_ID)
FROM Kunde LEFT JOIN Abrechnung ON kunde.Kunde_ID=abrechnung.Kunde_id
GROUP BY Kunde.Kunde_ID, Nachname;


#b)
SELECT
	abrechnung.Abrechnung_ID,
    Datum,
    ifNULL(MIN(Produkt_ID),"leere Abrechnung")
FROM abrechnung LEFT JOIN abrechnung_produkt ON abrechnung.Abrechnung_ID=abrechnung_produkt.Abrechnung_ID
GROUP BY abrechnung.Abrechnung_ID, Datum;

   
#c)
SELECT
	hersteller.Hersteller_ID,
    Hersteller_Name,
    ifNULL(MAX(Euro_Preis),"keine Angabe") AS "Höchster Preis"
FROM produkt RIGHT JOIN hersteller ON produkt.Hersteller_ID=hersteller.Hersteller_ID
GROUP BY hersteller.Hersteller_ID, Hersteller_Name
ORDER BY MAX(Euro_Preis) DESC;

# oder  

SELECT
	hersteller.Hersteller_ID,
    Hersteller_Name,
    ifNULL(MAX(Euro_Preis),'keine Angabe') AS 'Höchster Preis'

FROM hersteller LEFT JOIN produkt ON produkt.Hersteller_ID=hersteller.Hersteller_ID
GROUP BY hersteller.Hersteller_ID, Hersteller_Name
ORDER BY MAX(Euro_Preis) DESC;


#d)
SELECT 
	Vorname,
    Nachname,
    COUNT(Abrechnung_ID) AS "Anzahl der Abrechnungen"
FROM kunde LEFT JOIN abrechnung ON kunde.Kunde_ID =abrechnung.Kunde_ID
GROUP BY Vorname, Nachname
ORDER BY COUNT(Abrechnung_ID);


# oder

SELECT Vorname, Nachname, COUNT(Abrechnung_ID) AS Anzahl_der_Abrechnungen 
FROM kunde LEFT JOIN abrechnung 
ON kunde.Kunde_ID =abrechnung.Kunde_ID 
GROUP BY Vorname, Nachname 
ORDER BY Anzahl_der_Abrechnungen;
