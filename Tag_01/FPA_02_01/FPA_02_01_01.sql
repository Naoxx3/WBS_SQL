CREATE DATABASE Prognosewert;
USE Prognosewert;


CREATE Table Institut
(
  Institut_ID INT(11) AUTO_INCREMENT,
  Institut_Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Institut_ID)
);

CREATE Table Ort
(
  Ort_ID INT(11) AUTO_INCREMENT,
  Ort_Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Ort_ID)
);

CREATE TABLE Zentralrechner
(
  Zentralrechner_ID INT(11) AUTO_INCREMENT,
  Ort_ID INT(11) NOT NULL,
  Zentralrechner_Bezeichnung VARCHAR(255) NOT NULL,
  PRIMARY KEY (Zentralrechner_ID),
  FOREIGN KEY (Ort_ID) REFERENCES Ort(Ort_ID)
);

CREATE Table Zeitzone
(
  Zeitzone_ID INT(11) AUTO_INCREMENT,
  Differenz_zur_Default_Zeit INT(11) NOT NULL,
  Zeitzone_Bezeichnung VARCHAR(255) NOT NULL,
  PRIMARY KEY (Zeitzone_ID)
);

CREATE Table Wert
(
  Wert_ID INT(11) AUTO_INCREMENT,
  Institut_ID INT(11) NOT NULL,
  Zentralrechner_ID INT(11) NOT NULL,
  Ort_ID INT(11) NOT NULL,
  Zeitzonen_ID INT(11) NOT NULL,  
  Datum DATE NOT NULL,
  Uhrzeit TIME NOT NULL,
  Temperatur_in_Celsius Int(11) NOT NULL,
  Luftfeuchtigkeit_in_Prozent Int(11) NOT NULL,
  Niederschlag_in_mm_pro_qm Int(11) NOT NULL,
  Windgeschwindigkeit_in_m_pro_s Int(11) NOT NULL,
  istPrognose Int(11) NOT NULL,
  PRIMARY KEY (Wert_ID),
  FOREIGN KEY (Institut_ID) REFERENCES Institut(Institut_ID),
  FOREIGN KEY (Zentralrechner_ID) REFERENCES Zentralrechner(Zentralrechner_ID),
  FOREIGN KEY (Ort_ID) REFERENCES Ort(Ort_ID),
  FOREIGN KEY (Zeitzonen_ID) REFERENCES Zeitzone(Zeitzone_ID)

);