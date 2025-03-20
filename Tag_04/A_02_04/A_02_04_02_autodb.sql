
DROP DATABASE IF EXISTS AutoDB;
CREATE DATABASE AutoDB;
USE AutoDB;

CREATE TABLE Autos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ps INT NOT NULL,
    baujahr YEAR NOT NULL,
    preis DECIMAL(10,2) NOT NULL,
    besitzer_id INT NOT NULL,
    hersteller_id INT NOT NULL
);

INSERT INTO Autos (ps, baujahr, preis, besitzer_id, hersteller_id) VALUES
(60, 1985, 4999.99, 1, 1),   -- a) wird gelöscht (Baujahr < 1990, PS > 100)
(150, 1980, 8999.99, 2, 2),  -- a) wird gelöscht (Baujahr < 1990, PS > 100)
(75, 2005, 2999.99, 3, 3),  
(90, 2010, 9999.99, 4, 4),   
(200, 2020, 12999.99, 5, 5), -- c) wird gelöscht (Preis > 10000 oder Hersteller 5)
(95, 2012, 7999.99, 6, 1),  
(130, 2016, 10999.99, 7, 2), -- c) wird gelöscht (Preis > 10000)
(180, 2019, 19999.99, 8, 3), -- c) wird gelöscht (Preis > 10000)
(55, 1965, 11999.99, 9, 4),  -- d) wird gelöscht (Baujahr < 1970)
(250, 2022, 39999.99, 10, 5), -- c) wird gelöscht (Preis > 10000 oder Hersteller 5)
(85, 2007, 3999.99, 11, 1),  -- b) bleibt erhalten (Besitzer-ID < 12, aber Preis < 8000)
(120, 2013, 7999.99, 12, 2),  
(160, 2017, 14999.99, 13, 3), -- c) wird gelöscht (Preis > 10000)
(100, 2009, 5999.99, 14, 4),  
(210, 2021, 27999.99, 15, 5), -- c) wird gelöscht (Preis > 10000 oder Hersteller 5)
(70, 2004, 2499.99, 16, 1),  
(140, 2014, 9999.99, 17, 2),  
(190, 2018, 18999.99, 18, 3), -- c) wird gelöscht (Preis > 10000)
(80, 2006, 3499.99, 19, 4),  
(230, 2023, 34999.99, 20, 5), -- c) wird gelöscht (Preis > 10000 oder Hersteller 5)
(105, 2011, 6999.99, 21, 1),  
(175, 2020, 22999.99, 22, 2), -- c) wird gelöscht (Preis > 10000)
(125, 2015, 8999.99, 23, 3),  
(270, 2022, 41999.99, 24, 4), -- c) wird gelöscht (Preis > 10000)
(65, 2002, 1599.99, 25, 5),   -- c) wird gelöscht (Hersteller = 5)
(200, 2019, 24999.99, 26, 1), -- c) wird gelöscht (Preis > 10000)
(145, 2016, 11999.99, 27, 2), -- c) wird gelöscht (Preis > 10000)
(165, 2018, 16999.99, 28, 3), -- c) wird gelöscht (Preis > 10000)
(90, 2008, 4999.99, 29, 4),  
(300, 2024, 49999.99, 30, 5); -- c) wird gelöscht (Preis > 10000 oder Hersteller 5)

