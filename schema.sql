-- Create a database
CREATE DATABASE HospitalJournalSystem;
USE HospitalJournalSystem;

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    Email VARCHAR (100) UNIQUE NOT NULL
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    Appointment_date TIMESTAMP NOT NULL,        -- Change to datetime datatype
    PatientID INT NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID)
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR (50) NOT NULL,
    LastName VARCHAR (50) NOT NULL,
    Email VARCHAR (100) UNIQUE NOT NULL,
    Speciality VARCHAR (50) NOT NULL
);

-- Create JournalData table
CREATE TABLE JournalData (
    JournalData_id INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Creation_date TIMESTAMP NOT NULL
);

-- Create Treatment table
CREATE TABLE Treatments (
    PatientID INT,
    DoctorID INT,
    PRIMARY KEY (PatientID, DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors (DoctorID)
);

-- Create Users (Patients)
INSERT INTO Patients (PatientID, FirstName, LastName, Email) VALUES
 (1, 'Olga', 'Andreoletti', 'olga@example.com'),
 (2, 'Cristal', 'Jeyness', 'cristal@mail.com'),
 (3, 'Elmore', 'MacNeil', 'elmore@hundi.com'),
 (4, 'Bryon', 'Burberye', 'bryon@hotmail.com'),
 (5, 'Issiah', 'Beasant', 'issiah44@google.com'),
 (6, 'Mallorie', 'Isaksson', 'mallorie@example.com'),
 (7, 'Siffre', 'Duplain', 'siffre@example.com'),
 (8, 'Rivi', 'Abramowsky', 'rivi@gmail.com'),
 (9, 'Vivyan', 'McClancy', 'vivyan@hotmail.com'),
 (10, 'Florencia', 'Banker', 'florencia@example.com'),
 (11, 'Karole', 'Arnholz', 'karole@example.com'),
 (12, 'Terra', 'Surridge', 'terra@gmail.com'),
 (13, 'Sophronia', 'Pilmore', 'sophronia@gmail.com'),
 (14, 'Ashley', 'Duddell', 'ashley@example.com'),
 (15, 'Arlen', 'Salter', 'arlen@gmail.com'),
 (16, 'Benedict', 'Goucher', 'benedict@example.com'),
 (17, 'Gay', 'Jearum', 'gay.jearum@gmail.com'),
 (18, 'Anna-maria', 'Faulconbridge', 'anna.maria@example.com'),
 (19, 'Meridith', 'Ivankin', 'meridith@example.com'),
 (20, 'Dewie', 'Girardini', 'dewie@gmail.com'),
 (21, 'Ardyth', 'Doyley', 'ardyth.doyley@example.com'),
 (22, 'Vivie', 'Moggie', 'vivie.moggie@starpeet.com'),
 (23, 'Morrie', 'Sara', 'morrie.sara@gmail.com'),
 (24, 'Lenna', 'Vaskin', 'lenna.vaskin@example.com'),
 (25, 'Perrine', 'Revan', 'perrine@example.com');


 INSERT INTO Doctors (DoctorID, FirstName, LastName, Email, Speciality) VALUES
(1, 'Royal', 'Grahlman', 'royal.grahlman@kalixhospital.org', 'General_practice'),
(2, 'Jarrett', 'Daulton', 'jarrett.daulton@kalixhospital.org', 'General_surgery'),
(3, 'Mandi', 'Piatto', 'mandi.piatto2@kalixhospital.org', 'General_practice'),
(4, 'Standford', 'Rought', 'standford.rought@kalixhospital.org', 'Cardiology'),
(5, 'Judi', 'Jakobssen', 'judi.jakobssen@kalixhospital.org', 'General_practice'),
(6, 'Krysta', 'Klimschak', 'krysta.klimschak@kalixhospital.org', 'General_surgery'),
(7, 'Celie', 'Cheverton', 'celie.cheverton@kalixhospital.org', 'General_practice'),
(8, 'Odey', 'Shackle', 'odey.shackle@kalixhospital.org', 'Anaesthetics');