#A_03_03_01

#a)
SELECT MIN(Spedition_ID),
       MAX(Spedition_ID),
       COUNT(Spedition_ID)
FROM Spedition;

#b)
SELECT AVG(Euro_Preis) AS "Durchschnittspreis"
FROM Abrechnung_Produkt,Produkt
WHERE Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id;

# ODER

SELECT AVG(P.Euro_Preis) AS 'Durchschnittspreis'
FROM Abrechnung_Produkt AP
INNER JOIN Produkt P ON AP.Produkt_ID = P.Produkt_ID;

#c)
SELECT A.Abrechnung_ID, A.Datum, SUM(P.Euro_Preis) AS Gesamtbestellsumme
FROM Abrechnung A
INNER JOIN Abrechnung_Produkt AP ON A.Abrechnung_ID = AP.Abrechnung_ID
INNER JOIN Produkt P ON AP.Produkt_ID = P.Produkt_ID
GROUP BY A.Abrechnung_ID, A.Datum
ORDER BY SUM(P.Euro_Preis) DESC;



#d)
SELECT Kunde.Kunde_ID, Nachname, COUNT(Produkt_ID)
FROM Kunde,Abrechnung,Abrechnung_Produkt
WHERE Kunde.Kunde_ID=Abrechnung.Kunde_id
      AND Abrechnung.Abrechnung_ID=Abrechnung_Produkt.Abrechnung_ID 
GROUP BY Kunde.Kunde_ID, Nachname
ORDER BY COUNT(Abrechnung_Produkt.Produkt_ID) DESC, Nachname;


# ODER

SELECT K.Kunde_ID, K.Nachname, COUNT(AP.Produkt_ID) AS Produkt_Count
FROM Kunde K
INNER JOIN Abrechnung A ON K.Kunde_ID = A.Kunde_ID
INNER JOIN Abrechnung_Produkt AP ON A.Abrechnung_ID = AP.Abrechnung_ID
GROUP BY K.Kunde_ID, K.Nachname
ORDER BY COUNT(AP.Produkt_ID) DESC, K.Nachname;


#e)
SELECT Hersteller_Name,COUNT(Produkt_ID)
FROM Produkt,Hersteller
WHERE Produkt.Hersteller_ID=Hersteller.Hersteller_ID
GROUP BY Hersteller_Name #(schöner: Herstellr_ID)
HAVING COUNT(Produkt_ID)>=1 #(HAVING-Klausel nicht notwendig, da Hersteller ohne Produkt im Sortiment ohnehin nicht verknüpft werden können und daher ohnehin unberücksichtigt bleiben)
ORDER BY COUNT(Produkt_ID) DESC;


# ODER

SELECT H.Hersteller_Name, COUNT(P.Produkt_ID) AS Produkt_Count
FROM Hersteller H
INNER JOIN Produkt P ON H.Hersteller_ID = P.Hersteller_ID
GROUP BY H.Hersteller_Name
ORDER BY COUNT(P.Produkt_ID) DESC;



#f)
SELECT Produkt_Name, COUNT(Produkt.Produkt_ID) 
FROM Abrechnung_Produkt,Produkt 
WHERE Abrechnung_Produkt.Produkt_ID=Produkt.Produkt_id 
GROUP BY Produkt_Name #(schöner: Produkt_ID) 
ORDER BY COUNT(Produkt.Produkt_ID) DESC LIMIT 3;


# ODER


SELECT P.Produkt_ID, P.Produkt_Name, COUNT(P.Produkt_ID) AS Produkt_Count
FROM Abrechnung_Produkt AP
INNER JOIN Produkt P ON AP.Produkt_ID = P.Produkt_ID
GROUP BY P.Produkt_ID, P.Produkt_Name
ORDER BY Produkt_Count DESC
LIMIT 3;

