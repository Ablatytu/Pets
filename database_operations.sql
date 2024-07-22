-- Создание базы данных
CREATE DATABASE Друзья_человека;

-- Выбор базы данных
USE Друзья_человека;

-- Создание таблиц
CREATE TABLE Животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    имя VARCHAR(255),
    дата_рождения DATE
);

CREATE TABLE Домашние_Животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    вид VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Вьючные_Животные (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    вид VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Собаки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Кошки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Хомяки (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Лошади (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Верблюды (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

CREATE TABLE Ослы (
    id INT AUTO_INCREMENT PRIMARY KEY,
    животное_id INT,
    команды VARCHAR(255),
    FOREIGN KEY (животное_id) REFERENCES Животные(id)
);

-- Заполнение таблиц
INSERT INTO Животные (имя, дата_рождения) VALUES ('Бобик', '2020-01-01');
INSERT INTO Собаки (животное_id, команды) VALUES (1, 'Сидеть, Лежать');

INSERT INTO Животные (имя, дата_рождения) VALUES ('Мурка', '2021-05-15');
INSERT INTO Кошки (животное_id, команды) VALUES (2, 'Ко мне');

INSERT INTO Животные (имя, дата_рождения) VALUES ('Хома', '2022-03-10');
INSERT INTO Хомяки (животное_id, команды) VALUES (3, 'Бегать');

INSERT INTO Животные (имя, дата_рождения) VALUES ('Сивка', '2019-07-20');
INSERT INTO Лошади (животное_id, команды) VALUES (4, 'Галоп');

INSERT INTO Животные (имя, дата_рождения) VALUES ('Горбач', '2018-09-25');
INSERT INTO Верблюды (животное_id, команды) VALUES (5, 'Переносить грузы');

INSERT INTO Животные (имя, дата_рождения) VALUES ('Иа', '2020-11-11');
INSERT INTO Ослы (животное_id, команды) VALUES (6, 'Тащить тележку');

-- Удаление верблюдов и объединение таблиц
DELETE FROM Верблюды WHERE id > 0;

CREATE TABLE Лошади_и_Ослы AS
SELECT * FROM Лошади
UNION
SELECT * FROM Ослы;

-- Создание таблицы молодых животных
CREATE TABLE Молодые_Животные AS
SELECT id, имя, дата_рождения,
       TIMESTAMPDIFF(MONTH, дата_рождения, CURDATE()) AS возраст_в_месяцах
FROM Животные
WHERE TIMESTAMPDIFF(YEAR, дата_рождения, CURDATE()) BETWEEN 1 AND 3;

-- Объединение всех таблиц
CREATE TABLE Все_Животные_Объединенные AS
SELECT 'Собаки' AS тип, id, имя, дата_рождения, команды FROM Собаки
UNION ALL
SELECT 'Кошки', id, имя, дата_рождения, команды FROM Кошки
UNION ALL
SELECT 'Хомяки', id, имя, дата_рождения, команды FROM Хомяки
UNION ALL
SELECT 'Лошади', id, имя, дата_рождения, команды FROM Лошади
UNION ALL
SELECT 'Ослы', id, имя, дата_рождения, команды FROM Ослы;
