USE Human_friends;

CREATE TEMPORARY TABLE animals_temp AS
SELECT *, 'Лошади' as Genus FROM Horses
UNION SELECT *, 'Ослы' AS Genus FROM Donkeys
UNION SELECT *, 'Собаки' AS Genus FROM Dogs
UNION SELECT *, 'Кошки' AS Genus FROM Cats
UNION SELECT *, 'Хомяки' AS Genus FROM Hamsters;

CREATE TABLE Young_animals AS
SELECT Name, Birthday, Commands, Genus, TIMESTAMPDIFF(MONTH, Birthday, CURDATE()) AS Age_in_month
FROM animals_temp WHERE Birthday BETWEEN ADDDATE(CURDATE(), INTERVAL -3 YEAR) AND ADDDATE(CURDATE(), INTERVAL -1 YEAR);

SELECT * FROM Young_animals;