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

