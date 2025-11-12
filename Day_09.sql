--Practice Questions
--1.
SELECT name,EXTRACT(YEAR FROM arrival_date) AS year_admitted
FROM patients
ORDER BY patient_id;
--2.
SELECT name,departure_date - arrival_date FROM patients
ORDER BY patient_id;
--3.
SELECT *
FROM patients
WHERE EXTRACT(MONTH FROM arrival_date) = 3
ORDER BY patient_id;

--Daily challenge
SELECT service,ROUND(AVG(departure_date - arrival_date),2) AS average_len_of_stay,COUNT(*) AS no_of_patients
FROM patients
GROUP BY service
HAVING AVG(departure_date - arrival_date) >7 
ORDER BY average_len_of_stay DESC;