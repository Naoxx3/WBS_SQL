

#Aufgabe_02_02_03u04_b


#CREATE DATABASE A_02_02_03u04;

USE A_02_02_03u04;

CREATE TABLE Stadt (
    Stadt_ID INT(11) NOT NULL AUTO_INCREMENT,
    Stadtname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Stadt_ID)
);

CREATE TABLE Stadtteil (
    Stadtteil_ID INT(11) NOT NULL AUTO_INCREMENT,
    Stadt_ID INT(11) NOT NULL,
    Stadtteilname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Stadtteil_ID),
    FOREIGN KEY (Stadt_ID) REFERENCES Stadt(Stadt_ID)
);

CREATE TABLE Postbote (
    Postbote_ID INT(11) NOT NULL AUTO_INCREMENT,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Postbote_ID)
    
);

CREATE TABLE Strasse (
    Strasse_ID INT(11) NOT NULL AUTO_INCREMENT,
    Stadtteil_ID INT(11) NOT NULL,
    Postbote_ID INT(11) NOT NULL,
    Strassenname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Strasse_ID),
    FOREIGN KEY (Stadtteil_ID) REFERENCES Stadtteil(Stadtteil_ID),
    FOREIGN KEY (Postbote_ID) REFERENCES Postbote(Postbote_ID)
);