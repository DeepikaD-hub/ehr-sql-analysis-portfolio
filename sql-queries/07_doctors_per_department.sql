SELECT 
    department,
    count(DISTINCT doctor_id) AS doctors_per_department
FROM simulated_ehr_dataset
GROUP BY department
ORDER BY doctors_per_department DESC;




   