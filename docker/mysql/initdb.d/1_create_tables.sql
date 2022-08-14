DROP DATABASE IF EXISTS webapp;

CREATE DATABASE webapp;

USE webapp;

DROP TABLE IF EXISTS languages;

CREATE TABLE languages(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
