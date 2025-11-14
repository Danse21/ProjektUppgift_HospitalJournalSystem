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