--Practice Questions
--1.
SELECT service,
	   SUM(patients_admitted) AS total_admitted
FROM services_weekly
GROUP BY service
Having SUM(patients_admitted) >500
ORDER BY service ASC;
--2.
SELECT service,
	   AVG(patient_satisfaction)  AS average_satisfaction
FROM services_weekly
GROUP BY service
Having AVG(patient_satisfaction) < 75;
--3.
SELECT week, SUM(present) AS no_of_staff_present
FROM staff_schedule
GROUP BY week
HAVING SUM(present) <50
ORDER BY week;
--Daily challenge
SELECT service AS service_name,
	   SUM(patients_refused) AS total_refused,
	   ROUND(AVG(patient_satisfaction),2) AS average_satisfaction
FROM services_weekly
GROUP BY service
HAVING SUM(patients_refused) > 100 AND AVG(patient_satisfaction) < 80;

