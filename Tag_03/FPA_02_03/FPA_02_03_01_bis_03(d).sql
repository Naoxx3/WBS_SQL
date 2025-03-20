#FPA_02_03_01_bis_03(d)

USE FPA_02_03_01_bis_03_c;

# 1.
ALTER TABLE Person ADD Anzahl_Ehen_bisher INT(11) NOT NULL;


# 2.
# Dieses Attribut ist ungeschickt, da es bei jeder neuen Ehe aktualisiert werden müsste.
# Dieses Attribut ist überflüssig, da die Anzahl der bisherigen Ehen durch Nachzählen in der Tabelle Ehe ermittelt werden könnte.
ALTER TABLE Person DROP Anzahl_Ehen_bisher;


# 3.
ALTER TABLE Ehe ADD Standesbeamter_ID INT(11) NOT NULL;
ALTER TABLE Ehe ADD FOREIGN KEY(Standesbeamter_ID) REFERENCES Person(Person_ID);



