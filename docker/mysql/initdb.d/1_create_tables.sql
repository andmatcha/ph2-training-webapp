DROP DATABASE IF EXISTS webapp;

CREATE DATABASE webapp;

USE webapp;

DROP TABLE IF EXISTS languages;

CREATE TABLE languages(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS contents;

CREATE TABLE contents(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS study_logs;

CREATE TABLE study_logs(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    study_date DATE NOT NULL,
    study_time INT NOT NULL
);

DROP TABLE IF EXISTS study_languages;

CREATE TABLE study_languages(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    study_log_id INT NOT NULL,
    language_id INT NOT NULL
);

DROP TABLE IF EXISTS study_contents;

CREATE TABLE study_contents(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    study_log_id INT NOT NULL,
    language_id INT NOT NULL
);
