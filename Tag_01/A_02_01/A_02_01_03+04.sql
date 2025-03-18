CREATE DATABASE Stundenplan;

USE Stundenplan;

CREATE TABLE Lehrer(
    Lehrer_ID INT(11) AUTO_INCREMENT,
    Anrede VARCHAR(255) NOT NULL,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Lehrer_ID)
);

CREATE TABLE Klasse(
    Klasse_ID INT(11) AUTO_INCREMENT,
    Lehrer_ID INT(11) NOT NULL,
    Nummer INT(2) NOT NULL,
    Buchstabe VARCHAR(1) NOT NULL,
    PRIMARY KEY(Klasse_ID),
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID)
);

CREATE TABLE Schueler(
    Schueler_ID INT(11) AUTO_INCREMENT,
    Klasse_ID INT(11) NOT NULL,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY(Schueler_ID),
    FOREIGN KEY(Klasse_ID) REFERENCES Klasse(Klasse_ID)
);

CREATE TABLE Wochentag(
    Wochentag_ID INT(11) AUTO_INCREMENT,
    Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Wochentag_ID)
);

CREATE TABLE Stunde(
    Stunde_ID INT(11) AUTO_INCREMENT,
    Beginn Time,
    Ende Time,
    PRIMARY KEY(Stunde_ID)
);

CREATE TABLE Thema(
    Thema_ID INT(11) AUTO_INCREMENT,
    Bezeichnung VARCHAR(255) NOT NULL,
    PRIMARY KEY(Thema_ID)
);

CREATE TABLE Qualifikation(
    Thema_ID INT(11) NOT NULL,
    Lehrer_ID INT(11) NOT NULL,
    FOREIGN KEY(Thema_ID) REFERENCES Thema(Thema_ID),
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID)
);

CREATE TABLE Unterrichtsstunde(
    Unterrichtsstunde_ID INT(11) AUTO_INCREMENT,
    Klasse_ID INT(11) NOT NULL,
    Wochentag_ID INT(11) NOT NULL,
    Stunde_ID INT(11) NOT NULL,
    Thema_ID Int(11) NOT NULL,
    Lehrer_ID INT(11) NOT NULL,
    PRIMARY KEY(Unterrichtsstunde_ID),
    FOREIGN KEY(Klasse_ID) REFERENCES Klasse(Klasse_ID),
    FOREIGN KEY(Wochentag_ID) REFERENCES Wochentag(Wochentag_ID),
    FOREIGN KEY(Stunde_ID) REFERENCES Stunde(Stunde_ID), 
    FOREIGN KEY(Thema_ID) REFERENCES Thema(Thema_ID),
    FOREIGN KEY(Lehrer_ID) REFERENCES Lehrer(Lehrer_ID)
);