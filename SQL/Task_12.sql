USE Human_friends;

SELECT h.Name, h.Birthday, h.Commands, pa.Genus_name, ya.Age_in_month
FROM Horses h
LEFT JOIN Young_animals ya ON ya.Name = h.Name
LEFT JOIN Packed_animals pa ON pa.Id = h.Genus_id
UNION
SELECT d.Name, d.Birthday, d.Commands, pa.Genus_name, ya.Age_in_month
FROM Donkeys d
LEFT JOIN Young_animals ya ON ya.Name = d.Name
LEFT JOIN Packed_animals pa ON pa.Id = d.Genus_id
UNION
SELECT c.Name, c.Birthday, c.Commands, p.Genus_name, ya.Age_in_month
FROM Cats c
LEFT JOIN Young_animals ya ON ya.Name = c.Name
LEFT JOIN Pets p ON p.Id = c.Genus_id
UNION
SELECT d.Name, d.Birthday, d.Commands, p.Genus_name, ya.Age_in_month
FROM Dogs d
LEFT JOIN Young_animals ya ON ya.Name = d.Name
LEFT JOIN Pets p ON p.Id = d.Genus_id
UNION
SELECT hm.Name, hm.Birthday, hm.Commands, p.Genus_name, ya.Age_in_month
FROM Hamsters hm
LEFT JOIN Young_animals ya ON ya.Name = hm.Name
LEFT JOIN Pets p ON p.Id = hm.Genus_id