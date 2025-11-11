--Practice Questions
--1.
SELECT UPPER(name) AS patient_name
FROM patients;
--2.
SELECT staff_name,
	   LENGTH(REPLACE(TRIM(staff_name), ' ','')) AS length_of_name
FROm staff;
--3.
SELECT CONCAT(staff_id, ' - ',staff_name) AS staff_details
FROM staff;
--Daily challenge
SELECT patient_id,
	   UPPER(name) AS fullname, 
	   LOWER(service) as service,
	   CASE
	   WHEN age >= 65 THEN 'Senior'
	   WHEN age >= 18 THEN 'Adult'
	   Else 'Minor' 
	    END AS age_category,
	   LENGTH(REPLACE(TRIM(name),' ','')) AS name_length
FROM patients
WHERE LENGTH(REPLACE(TRIM(name),' ','')) >10
ORDER BY patient_id;