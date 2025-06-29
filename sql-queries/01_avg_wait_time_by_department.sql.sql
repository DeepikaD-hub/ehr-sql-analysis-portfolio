SELECT department,
avg(timestampdiff(MINUTE, appointment_time, checkin_time)) AS avg_wait_minutes
FROM simulated_ehr_dataset
WHERE checkin_time IS NOT NULL
GROUP BY department;
ORDER BY avg_wait_minutes DESC;
 






