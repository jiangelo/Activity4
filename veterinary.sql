CREATE DATABASE veterinary;

CREATE TABLE animals(
animalid INT PRIMARY KEY,
name VARCHAR(50),
species VARCHAR(50),
breed VARCHAR(50),
dateofbirth DATE,
gender VARCHAR(10),
color VARCHAR(10),
ownerid INT,
FOREIGN KEY (ownerid)
REFERENCES owners(ownerid)
);