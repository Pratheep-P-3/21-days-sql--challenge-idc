--Practice Questions
--1.
SELECT name
FROM patients
ORDER BY name
LIMIT 5;
--2.
SELECT name
FROM patients
ORDER BY name
LIMIT 10
OFFSET 10;
--3.
SELECT *
FROM patients
ORDER BY arrival_date DESC
LIMIT 10;
--Daily Challenge
SELECT patient_id, name, service, satisfaction
FROM patients
ORDER BY satisfaction, name
LIMIT 5
OFFSET 2;


Select * from patients;