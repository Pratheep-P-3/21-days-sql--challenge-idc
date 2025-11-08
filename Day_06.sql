--Practice Questions
--1.
SELECT service,
		COUNT(*) AS total_count
FROM patients
GROUP BY service;
--2.
SELECT ROUND(AVG(age),0) AS average_age
FROM patients
GROUP BY service;
--3.
SELECT role, COUNT(*)
FROM staff
GROUP BY role;
--Daily challenge
SELECT service,
	   SUM(patients_admitted) AS total_admitted, 
	   SUM(patients_refused) AS total_refused,
	   ROUND((SUM(patients_admitted)::decimal / SUM(patients_request))*100,2) AS admission_rate
FROM services_weekly
GROUP BY service
ORDER BY admission_rate DESC;


