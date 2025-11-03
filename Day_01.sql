-- Practice questions
SELECT * 
FROM patients;

SELECT patient_id,name,age 
FROM patients;

SELECT * 
FROM services_weekly
LIMIT 10;

-- Day_01_challenge
SELECT DISTINCT service
FROM services_weekly;