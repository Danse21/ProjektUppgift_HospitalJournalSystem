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

