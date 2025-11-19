-- Alla frågor enligt kravlistan med kommentar ovanför varje fråga

-- Uppdatera data (Modifera)
-- Update an Email address on Patients table
UPDATE Patients
SET Email = 'issiah44@googlemicrosoft.com'
WHERE PatientID = 5;

-- Radera specifik data
-- Delete DoctorID = 7 record in Doctors table
DELETE FROM Doctors WHERE DoctorID = 7;

-- Frågor som använder Limit, Offset
-- Return 10 patients record 11 - 20 (inclusive)
SELECT FirstName, LastName FROM Patients
LIMIT 10 OFFSET 10;

-- Använder sig av SQL Funktioner såsom DATE, COUNT etc
-- DATE
SELECT * FROM Appointments
WHERE Appointment_date = '2025-10-03';

-- COUNT()
SELECT COUNT(Appointment_date) AS Bookings FROM Appointments
WHERE Appointment_date = '2025-10-03';

-- Fritext sökningar (LIKE)
-- Display either firstName(s) or lastName(s) that starts with 'Ja'.
SELECT * FROM Doctors
WHERE FirstName LIKE "Ja%" OR LastName LIKE "Ja%";

-- En JOIN som innefattar minst tre tabeller (Patients, Doctors och JournalData)
-- Display patients' firstName, lastName, and Email, Doctors' ID and Speciality as well as JournalData creation_date
SELECT CONCAT(p.FirstName, ' ', p.LastName) AS Patient_name, p.Email, d.DoctorID, CONCAT(d.FirstName, ' ', d.LastName) AS Doctor_name, d.Speciality, j.Creation_date
FROM JournalData AS j 
LEFT JOIN Patients AS p ON j.PatientID = p.PatientID
LEFT JOIN Doctors AS d ON j.DoctorID = d.DoctorID
ORDER BY Patient_name;

-- Skapa en View
-- Create a view of all Doctors with general practice speciality
CREATE VIEW Doctor_speciality AS
SELECT CONCAT(FirstName, ' ', LastName) AS Doctor_name, Speciality
FROM Doctors WHERE Speciality = 'General_practice';

SELECT * FROM Doctor_speciality;

-- Rapport som använder HAVING
-- List the top 10 patients
SELECT  