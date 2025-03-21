-- Erstelle die Datenbank
CREATE DATABASE spinetable;
USE spinetable;

-- Tabelle für Spine-Werte erstellen
CREATE TABLE spine_values (
    id INT AUTO_INCREMENT PRIMARY KEY,             -- Eindeutige ID für jede Zeile
    draw_weight_min INT NOT NULL,                  -- Minimales Zuggewicht (lbs)
    draw_weight_max INT NOT NULL,                  -- Maximales Zuggewicht (lbs)
    arrow_length INT NOT NULL,                     -- Pfeillänge (in Zoll)
    point_weight INT NOT NULL,                     -- Gewicht der Spitze (in Grain)
    spine_value INT NOT NULL,                      -- Spine-Wert (Steifigkeit des Schafts)
    fletch_length INT NOT NULL                     -- Länge der Befiederung (in Zoll)
);

-- Daten aus der Tabelle einfügen
INSERT INTO spine_values (draw_weight_min, draw_weight_max, arrow_length, point_weight, spine_value, fletch_length) VALUES
(10, 18, 26, 50, 1600, 3),
(10, 18, 27, 50, 1600, 3),
(10, 18, 28, 50, 1600, 3),
(10, 18, 29, 50, 1300, 3),
(10, 18, 30, 75, 1000, 3),
(10, 18, 31, 75, 1000, 4),
(10, 18, 32, 75, 800, 4),

(19, 24, 26, 50, 1600, 3),
(19, 24, 27, 50, 1300, 3),
(19, 24, 28, 50, 1300, 3),
(19, 24, 29, 50, 1300, 3),
(19, 24, 30, 75, 1000, 3),
(19, 24, 31, 75, 800, 4),
(19, 24, 32, 100, 600, 4),

(25, 29, 26, 50, 1300, 3),
(25, 29, 27, 50, 1300, 3),
(25, 29, 28, 75, 1000, 3),
(25, 29, 29, 75, 1000, 3),
(25, 29, 30, 75, 800, 3),
(25, 29, 31, 100, 600, 4),
(25, 29, 32, 100, 600, 4);
