#A_03_04_04

USE A_03_04_03u04;

#a)
SELECT
	pruefung.Pruefung_ID,
    Datum_Pruefung,
    COUNT(Note)
FROM pruefung LEFT JOIN student_pruefung ON pruefung.Pruefung_ID=student_pruefung.Pruefung_ID
                                            AND Note=1
GROUP BY pruefung.Pruefung_ID, Datum_Pruefung
ORDER BY COUNT(Note) DESC;

#b)
SELECT
	Bezeichnung,
    Dauer_Stunden,
    COUNT(Student_ID) AS "Studentenzahl"
FROM studienfach LEFT JOIN student_studienfach ON studienfach.Studienfach_ID=student_studienfach.Studienfach_ID
GROUP BY Bezeichnung, Dauer_Stunden
ORDER BY Bezeichnung;

#c)
SELECT
	student.Student_ID,
    Nachname,
    MAX(Pruefung_ID) AS "Max-ID"
FROM student LEFT JOIN student_pruefung ON student.Student_ID=student_pruefung.Student_ID
GROUP BY student.Student_ID, Nachname
HAVING MAX(Pruefung_ID)>1
ORDER BY student.Student_ID;
	  
#d)
SELECT
	Vorname,
    Nachname,
    COUNT(Pruefung_ID) AS "Anzahl der Prüfungen, die noch nicht bewertet wurden"
FROM student LEFT JOIN student_pruefung ON student.Student_ID=student_pruefung.Student_ID
                                           AND
                                           note IS NULL
GROUP BY Vorname, Nachname
ORDER BY COUNT(Pruefung_ID) DESC;