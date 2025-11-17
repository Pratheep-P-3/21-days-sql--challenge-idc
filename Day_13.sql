--Practice questions
--1. Join patients and staff based on their common service field (show patient and staff who work in same service).
SELECT 
	p.name,
	s.staff_name,
	p.service
FROM patients p
JOIN staff s
ON p.service = s.service;
--2. Join services_weekly with staff to show weekly service data with staff information.
SELECT 
	sw.week, 
	sw.patients_admitted,
    sw.patients_refused,
    sw.staff_morale,s.*
FROM services_weekly sw
JOIN staff s
ON sw.service = s.service
ORDER BY week,service;
--3. Create a report showing patient information along with staff assigned to their service.
SELECT *
FROM patients;
SELECT *
FROM staff;
SELECT *
FROM services_weekly;
SELECT 
	p.patient_id,
	p.name,
	p.age,
	p.service,
	s.staff_name,
	s.role
FROM patients p
JOIN staff s
ON p.service = s.service
ORDER BY patient_id;

--Daily challenge
SELECT 
	p.patient_id,
	p.name, 
	p.age, 
	p.service,
	COUNT(DISTINCT s.staff_name) AS no_of_staff
FROM patients p
JOIN staff s
ON p.service = s.service
GROUP BY
	p.patient_id,
	p.name, 
	p.age, 
	p.service
HAVING COUNT(DISTINCT s.staff_name) > 5
ORDER BY patient_id;




