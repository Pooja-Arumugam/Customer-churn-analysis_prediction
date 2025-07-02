SELECT 
    Contract, 
    COUNT(Contract) AS total_contract, 
    COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS percentage_contract
FROM 
    stg_Churn
GROUP BY 
    Contract