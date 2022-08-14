USE mysql;

ALTER user 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
ALTER user 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

DROP DATABASE IF EXISTS webapp;

CREATE DATABASE webapp;

USE webapp;
