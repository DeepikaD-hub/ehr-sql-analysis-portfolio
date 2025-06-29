SELECT 
   no_show, 
   count(*) AS total_appointments,
   avg(timestampdiff(MINUTE, appointment_time, checkin_time)) AS avg_wait_minutes
   FROM simulated_ehr_dataset
   GROUP BY no_show;
   