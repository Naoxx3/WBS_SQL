#A_03_04_02


#(1)
SELECT
	kunde.Kunde_ID,
    Nachname,
    ifNULL(MIN(Datum),"noch nie da") AS "Erste Abrechnung"
FROM kunde LEFT JOIN abrechnung ON kunde.Kunde_ID=abrechnung.Kunde_ID
GROUP BY kunde.Kunde_ID, Nachname
ORDER BY MIN(Datum);

#(2)
SELECT 
	hersteller.Hersteller_ID,
    hersteller.Hersteller_Name,
    ifNULL(AVG(Euro_Preis),0) AS Durchschnittspreis
FROM Produkt RIGHT JOIN Hersteller ON Produkt.Hersteller_ID=Hersteller.Hersteller_ID
GROUP BY hersteller.Hersteller_ID,hersteller.Hersteller_Name 
ORDER BY AVG(Euro_Preis) DESC;

#(3)
SELECT
	spedition.Spedition_ID,
    Spedition_Name,
    COUNT(Hersteller_ID) AS "Anzahl der Hersteller"
FROM hersteller RIGHT JOIN spedition ON hersteller.Spedition_ID=spedition.Spedition_ID
GROUP BY spedition.Spedition_ID, Spedition_Name
ORDER BY COUNT(Hersteller_ID) DESC, Spedition_Name;


#(4)
SELECT
	spedition.Spedition_ID,
    Spedition_Name
    # COUNT(Hersteller_ID) AS "Anzahl der Hersteller" ... da die Anzahl stets 0 sein wird, kann auf deren Ausgabe verzichtet werden
FROM hersteller RIGHT JOIN spedition ON hersteller.Spedition_ID=spedition.Spedition_ID
GROUP BY spedition.Spedition_ID, Spedition_Name
HAVING COUNT(Hersteller_ID) = 0 # Diese HAVING-Klausel sorgt dafür, dass nur Speditionen berücksichtigt werden, die mit keinem Hersteller zusammenarbeiten 
ORDER BY Spedition_Name; # Da die Anzahl der Hersteller stets identisch, kann dies als Sortier-Kriterium entfallen 


