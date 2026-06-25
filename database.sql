DROP DATABASE IF EXISTS pokemon_library;
CREATE DATABASE pokemon_library;
USE pokemon_library;

CREATE TABLE Pokemon (
    pokemon_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(30) NOT NULL,
    generation INT NOT NULL,
    rarity VARCHAR(20) NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL
);

CREATE TABLE Trainers (
    trainer_id INT AUTO_INCREMENT PRIMARY KEY,
    trainer_name VARCHAR(50) NOT NULL,
    region VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    favorite_type VARCHAR(30) NOT NULL
);

CREATE TABLE Collections (
    collection_id INT AUTO_INCREMENT PRIMARY KEY,
    trainer_id INT NOT NULL,
    pokemon_id INT NOT NULL,
    date_captured DATE NOT NULL,
    nickname VARCHAR(50),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id),
    FOREIGN KEY (pokemon_id) REFERENCES Pokemon(pokemon_id)
);

INSERT INTO Pokemon (name, type, generation, rarity, hp, attack, defense)
VALUES
('Pikachu', 'Electric', 1, 'Common', 35, 55, 40),
('Charizard', 'Fire', 1, 'Rare', 78, 84, 78),
('Bulbasaur', 'Grass', 1, 'Common', 45, 49, 49),
('Squirtle', 'Water', 1, 'Common', 44, 48, 65),
('Mewtwo', 'Psychic', 1, 'Legendary', 106, 110, 90);

INSERT INTO Trainers (trainer_name, region, age, favorite_type)
VALUES
('Ash Ketchum', 'Kanto', 15, 'Electric'),
('Misty', 'Kanto', 16, 'Water'),
('Brock', 'Kanto', 17, 'Rock');

INSERT INTO Collections (trainer_id, pokemon_id, date_captured, nickname)
VALUES
(1, 1, '2026-06-01', 'Sparky'),
(1, 2, '2026-06-03', 'Flame'),
(2, 4, '2026-06-04', 'Shell'),
(3, 3, '2026-06-05', 'Leafy');
