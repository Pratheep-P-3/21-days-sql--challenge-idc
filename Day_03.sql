-- Practice questions
--1.
SELECT name 
FROM patients 
ORDER BY age DESC;
--2.
SELECT *
FROM services_weekly
ORDER BY week ASC, patients_request DESC;
--3.
SELECT staff_name
FROM staff
ORDER BY staff_name ASC;
-- Daily challenge
SELECT week,service,patients_refused,patients_request
FROM services_weekly
ORDER BY patients_refused DESC
LIMIT 5;


