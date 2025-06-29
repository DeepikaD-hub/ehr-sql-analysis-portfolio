SELECT 
    hour(checkin_time) AS checkin_hour,
    count(*) AS checkin_count
FROM simulated_ehr_dataset
WHERE checkin_time IS NOT NULL
GROUP BY hour(checkin_time)
ORDER BY checkin_count DESC;

