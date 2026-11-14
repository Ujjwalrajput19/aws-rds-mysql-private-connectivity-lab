-- Create the lab database and students table.
-- Run this script in Sqlectron after connecting to MySQL.
CREATE DATABASE IF NOT EXISTS cloud_lab;
USE cloud_lab;
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(50),
    age INT
);
SELECT DATABASE();
SHOW TABLES;
DESCRIBE students;
