SELECT 
    Gender,
    COUNT(Gender) AS total_count, 
    COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS percentage
FROM 
    stg_Churn
GROUP BY 
    Gender