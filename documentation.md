# HospitalJournalSystem database
The database is made up of 5 tables: `Patients,` `Doctors,` `Appointments,` `JournalData` and `Treatments.` This is to define each object separately and connections between the tables.
All Primary and Foreign Keys are clearly indicated on each of the tables, sometimes as PK or FK, respectively. 

### The database will have the following relations:
1:M-relation --> One Doctor can create many JournalData.
M:M-relation --> One Patient can see many Doctors, and One Doctor can treat many Patients.

### Why the database is at least 3NF
The database follows at least Third Normal Form (3NF) because it is designed in a way that each table has a primary key, in which other non-key attributes depend directly on. Also, repeated and redundant information were separated into related tables through foreign keys to minimize duplication.

### Database Structure and Motivation
HospitalJournalSystem database represents patients record (or Journal entries) in a hospital. The database is designed to handle information about patients' planned hospital visit and treatment, and is made up of 5 distinct tables; `Patients,` `Doctors,` `Appointments,` and `JournalData` and `Treatments.`
The `Patients` table contains each patients' identification number (PatientID), first name, last name, and email address.
The `Doctors` table contains doctors' identification number (DoctorID), first name, last name, and email address as well as their specialization.
The `Appointments` table contains all the patients' hospital visit schedules, including appointment identification number (AppointmentID), PatientID, and appointment date.
The `JournalData` 