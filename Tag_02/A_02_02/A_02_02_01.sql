#A_02_02_01


#CREATE DATABASE Firma2;
USE Firma2;


CREATE TABLE Firma (
    Firma_ID INT(11) AUTO_INCREMENT,
    #Person_ID INT(11) NOT NULL, über ALTER TABLE hinzufügen
    Firmaname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Firma_ID)
    #Foreign Key (Person_ID) REFERENCES Person(Person_ID), über ALTER TABLE hinzufügen
);


CREATE TABLE Abteilung (
    Abteilung_ID INT(11) AUTO_INCREMENT,
    Firma_ID INT(11) NOT NULL,
    Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY (Abteilung_ID),
    FOREIGN KEY (Firma_ID) REFERENCES Firma(Firma_ID)
);


CREATE TABLE Person (
    Person_ID INT(11) AUTO_INCREMENT,
    Abteilung_ID INT(11) NOT NULL,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Person_ID),
    FOREIGN KEY (Abteilung_ID) REFERENCES Abteilung(Abteilung_ID)
);

# ALTER TABLE
ALTER TABLE Firma
ADD Person_ID INT(11) NOT NULL,
ADD CONSTRAINT fk_person
FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID);
