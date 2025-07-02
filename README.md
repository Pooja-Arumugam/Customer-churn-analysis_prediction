## 🚀 Project Overview


1️⃣ **Data Preparation (SQL Server)**  
- Imported the dataset `customer_data` into SQL Server  
- Created a database `data_churn`  
- Staged and cleaned data in `stg_Churn`  
- Created production tables and views:
  - `vw_ChurnData` – Churned or active customers
  - `vw_JoinData` – New customer sign-ups

2️⃣ **Data Exploration & Transformation**
- **SQL scripts** to:
  - Check distinct values (e.g., Gender, State, Contract)
  - Analyze revenue contribution by churn status
  - Check and handle null values
- **Power Query transformations** in Power BI:
  - Created `Churn Status` column
  - Binned `Monthly Charge` and `Age Group`
  - Built lookup tables and unpivoted service columns

3️⃣ **Interactive Dashboards (Power BI)**
- **Churn Analysis Page:**
  - Demographics (Gender, Age Groups)
  - Account Details (Contracts, Payment Methods)
  - Service Usage Patterns
  - Geographic Trends
  - Revenue & Refunds Analysis
- **Churn Prediction Page:**
  - Probability of churn per customer
  - Impact of revenue, tenure, and references
  - Key metrics (Churn Rate, New Joiners)

4️⃣ **Machine Learning Model (Python)**
- **Random Forest Classifier**
  - Encoded categorical features
  - Split data into training & test sets
  - Trained model to predict churn
  - Achieved **96% accuracy**
  - Visualized feature importance
- **Predictions on New Data**
  - Generated churn predictions for new customers
  - Saved results as CSV for further reporting

# 📊 Customer Churn Analysis and Prediction

![Data Model](./data_model.png)

This project demonstrates how to combine **SQL Server**, **Power BI**, and **Machine Learning** to analyze customer behavior, predict churn, and visualize actionable insights.


## 🗂️ Project Structure

```text
Customer-Churn-Analysis-and-Prediction/
│
├── codes/
│   ├── sql/
│   │   ├── data_exploration.sql
│   │   ├── data_cleaning_and_views.sql
│   │   └── table_creation.sql
│   │
│   ├── python/
│   │   ├── churn_modeling_random_forest.ipynb
│   │   └── prediction_script.py
│   │
│   ├── powerbi/
│   │   ├── power_query_transformations.pbit
│   │   └── measures_and_calculations.txt
│   │
│   └── data/
│       ├── customer_data.xlsx
│       └── predictions.csv
│
├── images/
│   └── churn_dashboard_sample.png
│
├── README.md
│
└── LICENSE

```

> 📂 *All scripts and supporting materials are in the [`codes`](codes) folder.*

---

## 🛠️ How to Run the Project

### 1️⃣ SQL Server

- Execute **`data_exploration.sql`** to explore data.
- Use **`data_cleaning_and_views.sql`** to clean and create views (`vw_ChurnData`, `vw_JoinData`).
- Validate that `prod_Churn` table is populated.

### 2️⃣ Power BI

- Import `prod_Churn` into Power BI Desktop.
- Apply **Power Query transformations**:
  - Create `Churn Status`, `Monthly Charge Range`, `Age Group`, `Tenure Group`.
  - Unpivot service columns.
- Use provided **measures and calculations** to build visuals.

### 3️⃣ Python (Machine Learning)

- Install dependencies:

  ```bash
  pip install pandas numpy matplotlib seaborn scikit-learn joblib

```
## 🛠️ How to Run the Python Model

- Open and run:
  - **`churn_modeling_random_forest.ipynb`** to train the model.
  - **`prediction_script.py`** to generate predictions on `vw_JoinData`.
- Evaluate model performance and export churn predictions.

---

## ✨ Example SQL Queries

Below are some example queries used during **data exploration**:

```sql
-- Gender Distribution
SELECT Gender, COUNT(*) AS TotalCount
FROM stg_Churn
GROUP BY Gender;

-- Revenue by Customer Status
SELECT Customer_Status, SUM(Total_Revenue) AS TotalRev
FROM stg_Churn
GROUP BY Customer_Status;

```
## 🔍 Key Learnings

✅ **SQL Server** is powerful for:
- Data cleaning
- Staging and versioning
- Aggregating key metrics

✅ **Power BI** enables:
- Dynamic dashboards
- Rich visual storytelling
- Advanced DAX calculations

✅ **Machine Learning** adds:
- Predictive capabilities
- Data-driven decision support

---

## 💡 Next Steps

- Deploy the model using **Streamlit** for a web-based prediction app.
- Automate data pipelines with **Azure Data Factory**.
- Integrate real-time data refresh in Power BI.
---
## 🤝 Let’s Connect

I’d love to hear your thoughts and experiences with churn prediction!  
---

