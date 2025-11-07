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

CREATE TABLE doctors(
dfirstname VARCHAR(50),
dlastname VARCHAR(50),
speciality VARCHAR(100),
phone VARCHAR (15),
email VARCHAR(100)
);
CREATE TABLE invoices(
    invoiceid INT PRIMARY KEY,
    ownerid INT,
    doctorid INT,
    petid INT,
    amount DECIMAL(10,2),
    invoice_date DATE,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid),
    FOREIGN KEY (petid) REFERENCES pets(petid)
);

CREATE TABLE medicalrecords(
    recordid INT PRIMARY KEY,
    animalid INT,
    doctorid INT,
    visitdate DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);