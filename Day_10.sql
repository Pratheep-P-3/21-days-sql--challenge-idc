--Practice Questions
--1. Categorise patients as 'High', 'Medium', or 'Low' satisfaction based on their scores.
SELECT patient_id,name,satisfaction,
	CASE
		WHEN satisfaction >=80 THEN 'High'
		WHEN satisfaction >=70 THEN 'Medium'
		ELSE 'Low'
	END AS satisfaction_category
FROM patients;
--2.Label staff roles as 'Medical' or 'Support' based on role type.
SELECT *,
	CASE
		WHEN role IN('doctor', 'nurse') THEN 'Medical'
		ELSE 'Support'
	END AS staff_role
FROM staff;	
--3. Create age groups for patients (0-18, 19-40, 41-65, 65+)
SELECT patient_id,name,age,
	CASE
		WHEN age >65 THEN 'Senior_citizen'
		WHEN age >41 THEN 'Middle_aged'
		WHEN age >19 THEN 'Adult'
		ELSE 'Minor'
	END AS age_category
	FROM patients;
--Daily challenge

SELECT 
		service,
		SUM(patients_admitted) AS total_patients,
		ROUND(AVG(patient_satisfaction),2) AS average_satisfaction,
	CASE
		WHEN AVG(patient_satisfaction) >=85 THEN 'Excellent'
		WHEN AVG(patient_satisfaction) >=75 THEN 'Good'
		WHEN AVG(patient_satisfaction) >=65 THEN 'Fair'
		ELSE 'Needs Improvement'
	END AS performance
FROM services_weekly
GROUP BY service
ORDER BY average_satisfaction DESC;










