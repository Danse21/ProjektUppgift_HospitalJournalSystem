-- Create Users data input

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


 INSERT INTO Doctors (DoctorID, FirstName, LastName, Email, Specialty) VALUES
(1, 'Royal', 'Grahlman', 'royal.grahlman@kalixhospital.org', 'General_practice'),
(2, 'Jarrett', 'Daulton', 'jarrett.daulton@kalixhospital.org', 'General_surgery'),
(3, 'Mandi', 'Piatto', 'mandi.piatto2@kalixhospital.org', 'General_practice'),
(4, 'Standford', 'Rought', 'standford.rought@kalixhospital.org', 'Cardiology'),
(5, 'Judi', 'Jakobssen', 'judi.jakobssen@kalixhospital.org', 'General_practice'),
(6, 'Krysta', 'Klimschak', 'krysta.klimschak@kalixhospital.org', 'General_surgery'),
(7, 'Celie', 'Cheverton', 'celie.cheverton@kalixhospital.org', 'General_practice'),
(8, 'Odey', 'Shackle', 'odey.shackle@kalixhospital.org', 'Anaesthetics');

INSERT INTO Appointments (AppointmentID, PatientID, Appointment_date) VALUES
(1, 12, '2025-02-20'),
(2, 7, '2025-09-23'),
(3, 17, '2025-10-03'),
(4, 13, '2025-10-03'),
(5, 20, '2025-04-16'),
(6, 13, '2025-12-19'),
(7, 13, '2025-11-15'),
(8, 17, '2025-12-02'),
(9, 7, '2025-11-23'),
(10, 7, '2025-12-09');

INSERT INTO JournalData (PatientID, DoctorID, Creation_date) VALUES
(7, 1, '2025-10-07'),
(12, 1, '2025-11-10'),
(13, 4, '2025-11-23'),
(17, 1, '2025-10-14'),
(20, 2, '2025-10-23');

INSERT INTO Treatments (PatientID, DoctorID) VALUES
(7, 1,),
(12, 1),
(17, 1),
(20, 2,);