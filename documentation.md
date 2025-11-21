# HospitalJournalSystem database
The database is made up of 4 tables: ```Patients```, ```Doctors```, ```Appointments```, and ```JournalData.``` This is to define each object separately and connections between the tables.
All Primary and Foreign Keys are clearly indicated on each of the tables, sometimes as PK or FK, respectively. 

### The database will have the following relations:
1:M-relation --> One Doctor can create many JournalData.
M:M-relation --> One Patient can see many Doctors, and One Doctor can treat many Patients.

### Why the database is at least 3NF
The database follows at least Third Normal Form (3NF) because it is designed in a way that each table has a primary key, in which other non-key attributes depend directly on. Also, repeated and redundant information were separated into related tables through foreign keys to minimize duplication.

### How to Use
- Run the codes one block at a time, ie., create database --> Patients table --> Appointments table --> etc.
- Do 