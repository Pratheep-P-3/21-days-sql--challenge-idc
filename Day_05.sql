-- Practice questions
--1.
Select Count(*) AS total_patients
From patients;
--2.
SELECT AVG(satisfaction) AS average_satisfaction
FROM patients;
--3.
SELECT MIN(age) AS minimum_age, MAX(age) AS max_age
FROM patients;

--Daily challenge

SELECT SUM(patients_admitted) AS total_patients, SUM(patients_refused) AS total_refused, ROUND(AVG(patient_satisfaction),2) AS average_satisfaction
FROM services_weekly;


