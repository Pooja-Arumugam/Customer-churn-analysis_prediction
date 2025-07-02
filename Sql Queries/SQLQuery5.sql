Select count(State) as total_countofstates, count(State) * 100.0 / (select count(*) from stg_Churn) as Percentage
from stg_Churn
group by State
order by Percentage Desc