# HospitalJournalSystem database
The database is made up of 4 tables: `Patients,` `Doctors,` `Appointments,` and `JournalData.` This is to define each object separately and connections between the tables.
All Primary and Foreign Keys are clearly indicated on each of the tables, sometimes as PK or FK, respectively. 

### Database Structure and Motivation
HospitalJournalSystem database represents patients record (or Journal entries) in a hospital. The database is designed to handle information about patients' planned hospital visit and treatment, and is made up of 4 distinct tables; `Patients,` `Doctors,` `Appointments,` and `JournalData.`
The `Patients` table contains each patients' identification number (PatientID), first name, last name, and email address; with the PatientID as the primary key (PK). The `Doctors` table contains doctors' identification number (DoctorID), first name, last name, and email address as well as their specialty; with the DoctorID as the PK. The `Appointments` table contains all the patients' hospital visit schedules, including appointment identification number (AppointmentID), PatientID, and appointment date. It has the AppointmentID and PatientID as the PK and Foreign key (FK), respectively. Lastly, the `JournalData` table contains medical record created by doctors after patient visit and the entry date. It uses the PatientID and DoctorID as FK to get or link information from both the Patients and the Doctors table. The table show the database structure;

![alt text](<Screenshot 2025-11-24 at 08.32.19.png>)


### Database  relations
1:M-relation --> One Doctor can create many JournalData.
M:M-relation --> One Patient can see many Doctors, and One Doctor can treat many Patients.

### Normalization
The database follows at least Third Normal Form (3NF) because it is designed to separate information belonging to different category of user in a separate table, which includes a primary key, in which other non-key attributes depend directly on. Also, repeated and redundant information were separated into related tables through foreign keys to minimize duplication.

### Data type choice and motivation
![alt text](<Screenshot 2025-11-24 at 08.39.25.png>)


### Security aspect
To ensure that the information in the table are correct and protected, the following approaches were used:

![alt text](<Screenshot 2025-11-24 at 08.41.13.png>)