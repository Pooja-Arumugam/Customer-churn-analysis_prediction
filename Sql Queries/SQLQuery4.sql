Select Customer_Status, count(Customer_Status) as customer_status, sum(Total_Revenue) as totalrevenue,
sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) *100.0 as RevPercentage
from stg_Churn
Group by Customer_Status