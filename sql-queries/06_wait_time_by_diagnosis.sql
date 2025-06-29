SELECT 
   diagnosis_code,
   count(*) AS appointment_count, 
   avg(timestampdiff(MINUTE, appointment_time, checkin_time)) AS avg_wait_minutes
FROM simulated_ehr_dataset
WHERE checkin_time IS NOT NULL
GROUP BY diagnosis_code
ORDER BY avg_wait_minutes DESC;


   