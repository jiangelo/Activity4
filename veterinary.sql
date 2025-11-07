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
INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email) 
VALUES  
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '09171234567', 'juan.delacruz@email.com'),
    (2, 'Maria', 'Santos', '456 Rizal St, Quezon City', '09179876543', 'maria.santos@email.com'),
    (3, 'Pedro', 'Reyes', '789 Mabini St, Makati', '09171239876', 'pedro.reyes@email.com'),
    (4, 'Ana', 'Lopez', '321 Bonifacio St, Manila', '09173456789', 'ana.lopez@email.com'),
    (5, 'Luis', 'Gomez', '654 Quezon St, Taguig', '09177654321', 'luis.gomez@email.com'),
    (6, 'Carmen', 'Torres', '987 Taft Ave, Manila', '09172345678', 'carmen.torres@email.com'),
    (7, 'Ramon', 'Diaz', '246 Ayala Ave, Makati', '09171236789', 'ramon.diaz@email.com'),
    (8, 'Isabel', 'Cruz', '135 EDSA, Quezon City', '09179871234', 'isabel.cruz@email.com'),
    (9, 'Victor', 'Flores', '864 Katipunan, QC', '09171234512', 'victor.flores@email.com'),
    (10, 'Luz', 'Morales', '753 España Blvd, Manila', '09179876512', 'luz.morales@email.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) 
VALUES 
    (1, 'Buddy', 'Dog', 'Labrador', '2019-06-15', 'Male', 'Yellow', 1),
    (2, 'Mittens', 'Cat', 'Persian', '2020-03-10', 'Female', 'Cream', 2),
    (3, 'Charlie', 'Dog', 'Beagle', '2018-09-05', 'Male', 'Brown', 3),
    (4, 'Luna', 'Cat', 'Ragdoll', '2021-01-20', 'Female', 'White', 4),
    (5, 'Max', 'Dog', 'Chihuahua', '2020-02-14', 'Male', 'Fawn', 5),
    (6, 'Bella', 'Dog', 'Chihuahua', '2019-05-21', 'Female', 'White', 6),
    (7, 'Simba', 'Cat', 'Domestic Shorthair', '2020-11-11', 'Male', 'Orange', 7),
    (8, 'Rocky', 'Dog', 'Beagle', '2016-08-08', 'Male', 'Fawn', 8),
    (9, 'Coco', 'Dog', 'Poodle', '2021-05-05', 'Female', 'Spotted', 9),
    (10, 'Daisy', 'Dog', 'Labrador', '2018-07-07', 'Female', 'White', 10)

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality,phone, email)
VALUES
    (1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
    (2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
    (3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'), 
    (4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'), 
    (5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'), 
    (6, 'Dr. Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7,'2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8,'2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9,'2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10,'2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD COLUMN registereddate DATE;

ALTER TABLE invoices
RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM appointments
WHERE animalid = (
    SELECT animalid
    FROM animals
    WHERE name = 'Simba' AND species = 'Cat'
);

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE dfirstname = 'Sofia';

SELECT DISTINCT species
FROM animals;