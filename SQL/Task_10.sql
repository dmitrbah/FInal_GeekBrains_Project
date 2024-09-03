SET SQL_SAFE_UPDATES = 0;
DELETE FROM Camels;
SELECT * FROM Camels;

SELECT Name, Birthday, Commands, Genus_id FROM Horses
UNION SELECT Name, Birthday, Commands, Genus_id FROM Donkeys;