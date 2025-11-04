-- Practice Questions
--1.
SELECT name
FROM patients
WHERE age > 60;
--2.
SELECT staff_name
FROM staff
WHERE service = 'emergency';
--     OR
SELECT staff_name
FROM staff
WHERE service LIKE '%emergency';
--3
SELECT week
FROM SERVICES_WEEKLY
WHERE patients_request > 100;

--Daily Challenge
SELECT patient_id, name, age,satisfaction score
FROM patients
WHERE service = 'surgery' AND satisfaction < 70;








