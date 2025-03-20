#A_02_04_02

USE AutoDB;

#a)	
DELETE FROM autos WHERE ps>100 AND baujahr>1990;

#b)	
DELETE FROM autos WHERE besitzer_id<12 AND NOT preis<8000;

#c)	
DELETE FROM autos WHERE preis>10000 OR besitzer_id=5;

#d)	
DELETE FROM autos WHERE baujahr<1970 XOR preis=12000;
#XOR weil nur eine der beiden Bedingungen wahr sein darf

#e)
DELETE FROM autos WHERE baujahr>preis AND NOT hersteller_id=7;

#f)	
DELETE FROM autos WHERE besitzer_id<=10 AND hersteller_id<=10;

#g)	
DELETE FROM autos WHERE preis<ps AND id>baujahr;

#h)	
DELETE FROM autos WHERE ps>17 OR preis>17 OR id<17;

#i)	
DELETE FROM autos WHERE ps>17 AND preis>17 AND id<17;

#j)	
DELETE FROM autos WHERE ps>17 XOR preis>17 XOR id<17;

'(XOR-Ketten sind genau dann wahr, wenn die Anzahl der wahren Aussagen UNGERADE ist. 
Beispiel: A XOR B XOR C XOR D ist wahr, wenn 1 oder wenn 3 Aussagen wahr sind)
ACHTUNG: Klammern sind hier überflüssig (XOR ist „assoziativ“)

Lösung (ohne XOR):
(ps>17 AND NOT preis>17 AND NOT id>17) 
OR 
(NOT ps>17 AND preis>17 AND NOT id>17)
OR
(NOT ps>17 AND NOT preis>17 AND id>17);

Lösung (mit XOR):
(ps > 17 XOR preis > 17 XOR id > 17)         # die erste Klammer ist wahr, wenn 1 Aussage ODER 3 Aussagen wahr
AND NOT (ps > 17 AND preis > 17 AND id > 17) # die zweite Klammer schließt den Fall "3 wahre Aussagen" aus'
