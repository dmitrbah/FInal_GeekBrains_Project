# Итоговая контрольная работа

## Информация о проекте
Необходимо организовать систему учета для питомника в котором живут домашние и вьючные животные.

## Задание 1
Используя команду cat в терминале операционной системы Linux, создать два файла Домашние животные 
(заполнив файл собаками, кошками, хомяками) и Вьючные животными (заполнив файл лошадьми, верблюдами и
ослами), а затем объединить их. Просмотреть содержимое созданного файла. 
Переименовать файл, дав ему новое имя (Друзья человека).
![Task 1](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_1.png)

## Задание 2
Создать директорию, переместить файл туда.

![Task 2](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_2.png)

## Задание 3
Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.
![Task 3](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_3.1.png)
![Task 3](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_3.2.png)

## Задание 4
Установить и удалить deb-пакет с помощью dpkg.
![Task 4](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_4.png)

## Задание 5
Выложить историю команд в терминале ubuntu.
![Task 5](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_5.1.png)
![Task 5](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_5.2.png)

## Задание 6
Нарисовать диаграмму, в которой есть класс родительский класс, домашние животные и 
вьючные животные, в составы которых в случае домашних животных войдут классы: собаки, 
кошки, хомяки, а в класс вьючные животные войдут: лошади, верблюды и ослы.
![Task 6](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_6.png)

## Задание 7
В подключенном MySQL репозитории создать базу данных "Друзья человека"
![Task 7](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_7.png)

## Задание 8
Создать таблицы с иерархией из диаграммы в БД
![Task 8](https://github.com/dmitrbah/FInal_GeekBrains_Project/blob/master/Images/Task_8.png)
```
USE Human_friends;

CREATE TABLE Animals
(
	Id INT AUTO_INCREMENT PRIMARY KEY, 
	Class_name VARCHAR(20)
);

CREATE TABLE Packed_animals
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Genus_name VARCHAR(20),
    Class_id INT,
    FOREIGN KEY (Class_id) REFERENCES Animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Pets
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Genus_name VARCHAR(20),
    Class_id INT,
    FOREIGN KEY (Class_id) REFERENCES Animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Horses
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Camels
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Donkeys
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Cats
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Dogs
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Hamsters
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20),
    Birthday DATE,
    Commands VARCHAR(50),
    Genus_id INT,
    FOREIGN KEY (Genus_id) REFERENCES Pets (id) ON DELETE CASCADE ON UPDATE CASCADE
);
```

## Задание 9
Заполнить низкоуровневые таблицы именами(животных), командами которые они выполняют и датами рождения
