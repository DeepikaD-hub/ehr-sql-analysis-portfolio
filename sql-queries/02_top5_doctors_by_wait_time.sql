SELECT 
    doctor_id,
    COUNT(*) AS total_appointments,
    AVG(TIMESTAMPDIFF(MINUTE, appointment_time, checkin_time)) AS avg_wait_minutes
FROM simulated_ehr_dataset
WHERE checkin_time IS NOT NULL
GROUP BY doctor_id
ORDER BY avg_wait_minutes DESC
LIMIT 5;
