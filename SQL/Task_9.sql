USE Human_friends;

INSERT INTO Animals (Class_name)
VALUES 
('Вьючные животные'),
('Домашние животные');

INSERT INTO Packed_animals (Genus_name, Class_id)
VALUES
('Лошадь', 1),
('Осел', 1),
('Верблюд', 1);

INSERT INTO Pets (Genus_name, Class_id)
VALUES
('Кот', 2),
('Собака', 2),
('Хомяк', 2);

INSERT INTO Horses (Name, Birthday, Commands, Genus_id)
VALUES
('Буран', '2017-03-14', 'бегом, тише, шагом', 1),
('Гранит', '2022-09-05', 'бегом', 1),
('Енисей', '2023-05-21', 'шагом', 1);

INSERT INTO Donkeys (Name, Birthday, Commands, Genus_id)
VALUES
('Герберт', '2020-01-19', 'вперед, стоп', 2),
('Полли', '2023-08-15', 'стоп', 2),
('Арахис', '2023-06-05', '', 2);

INSERT INTO Camels (Name, Birthday, Commands, Genus_id)
VALUES
('Джаред', '2018-05-10', 'впред, стоп', 3),
('Финик', '2022-09-05', 'вперед', 3),
('Амур', '2023-05-21', 'вперед', 3);

INSERT INTO Cats (Name, Birthday, Commands, Genus_id)
VALUES
('Аська', '2016-11-05', 'кс-кс-кс, кушать', 1),
('Мурзик', '2021-12-10', 'кс-кс-кс', 1),
('Томас', '2023-09-25', '', 1);

INSERT INTO Dogs (Name, Birthday, Commands, Genus_id)
VALUES
('Шарик', '2022-08-04', 'дай лапу', 2),
('Пират', '2023-02-04', '', 2),
('Рекс', '2020-07-15', 'лежать, сидеть, голос, фас', 2);

INSERT INTO Hamsters (Name, Birthday, Commands, Genus_id)
VALUES
('Рыжик', '2023-11-10', '', 3),
('Черныш', '2023-09-04', '', 3),
('Снежок', '2022-12-21', 'крутись в колесе', 3);
