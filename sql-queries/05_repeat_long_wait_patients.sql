SELECT 
   patient_id,
   count(*) AS long_wait_appointments
FROM simulated_ehr_dataset
WHERE checkin_time IS NOT NULL
    AND timestampdiff(MINUTE, appointment_time, checkin_time) >= 20
GROUP BY patient_id
HAVING long_wait_appointments >= 3
ORDER BY long_wait_appointments DESC;

   