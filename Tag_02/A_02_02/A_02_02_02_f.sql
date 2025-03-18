#A_02_02_02(f)

USE A_01_05_02;

ALTER TABLE Firmenwagen
CHANGE kennzeichen KFZ_Kennzeichen VARCHAR(12) NOT NULL
;