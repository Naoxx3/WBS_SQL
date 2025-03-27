#A_03_04_03

USE A_03_04_03u04;

#a)
SELECT Student.Student_ID,Vorname,Nachname, COUNT(Studienfach_ID)
FROM Student LEFT JOIN Student_Studienfach ON Student.Student_ID=Student_Studienfach.Student_ID
GROUP BY Student.Student_ID,Vorname,Nachname
ORDER BY COUNT(Studienfach_ID) DESC;

#b)
SELECT Pruefung.Pruefung_ID, Datum_Pruefung, COUNT(Student_ID)
FROM Student_Pruefung RIGHT JOIN Pruefung ON Student_Pruefung.Pruefung_ID=Pruefung.Pruefung_ID
GROUP BY Pruefung.Pruefung_ID, Datum_Pruefung
ORDER BY Datum_Pruefung;

#c)
SELECT Studienfach.Studienfach_ID,Bezeichnung,COUNT(Pruefung_ID)
FROM Studienfach LEFT JOIN Pruefung ON Studienfach.Studienfach_ID=Pruefung.Studienfach_ID
GROUP BY Studienfach.Studienfach_ID,Bezeichnung
ORDER BY COUNT(Pruefung_ID);

#d)
SELECT Student.Student_ID,Vorname,Nachname,COUNT(Pruefung_ID)
FROM Student LEFT JOIN Student_Pruefung ON student.Student_ID=student_pruefung.Student_ID AND Note<=4
GROUP BY Student.Student_ID,Vorname,Nachname HAVING ifNULL(AVG(Note),1)<4 # Falls ein Student noch keine Prüfung schrieb ist seine Durchschnittsnote NULL. 
                                                                          # Die Bedingung NULL < 4 gilt dann aber als NICHT erfüllt.
																		  # Um ihn trotzdem ausgeben zu können wird seine Durchschnittsnote pro forma auf 1 gesetzt
																		  # (jeder andere beliebige Wert kleiner 4 hätte aber die gleiche Wirkung)
ORDER BY Nachname;



# oder

SELECT S.Student_ID, S.Vorname, S.Nachname, COUNT(SP.Pruefung_ID) AS Bestanden_Pruefungen
FROM Student INNER JOIN Student_Pruefung SP ON S.Student_ID = SP.Student_ID AND SP.Note <= 4  
GROUP BY S.Student_ID, S.Vorname, S.Nachname
HAVING AVG(SP.Note) < 4  
ORDER BY S.Nachname;