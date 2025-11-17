--1.Find all weeks in services_weekly where no special event occurred.
SELECT week, event
FROM services_weekly
WHERE event IN ('none') OR event IS NULL
GROUP BY week;
--2.Count how many records have null or empty event values.
SELECT count(*) AS no_event
FROM services_weekly
WHERE event IS NULL  OR event IN ('','none');
--3.List all services that had at least one week with a special event.
SELECT DISTINCT service
FROM services_weekly
WHERE event NOT IN ('none','') OR event IS NOT NULL;
--Daily challenge
/*Analyze the event impact by comparing weeks with events vs weeks without events. Show: event status ('With Event' or 'No Event'),
count of weeks, average patient satisfaction, and average staff morale. Order by average patient satisfaction descending.*/
SELECT  
	CASE 
	WHEN event NOT IN ('none','') AND event IS NOT NULL THEN 'with_event'
	ELSE 'without_event'
END AS event_status,
count(DISTINCT week) AS week_count,
ROUND(AVG(patient_satisfaction),2) AS avg_satisfaction,
ROUND(AVG(staff_morale),2) AS avg_morale
FROM services_weekly
GROUP BY event_status
ORDER BY avg_satisfaction DESC;
