# 📊 Customer Churn Analysis and Prediction

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Python](https://img.shields.io/badge/Python-3.9%2B-yellow.svg)](https://www.python.org/downloads/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-brightgreen.svg)](#)
[![SQL Server](https://img.shields.io/badge/SQL%20Server-Data--Preparation-critical)](#)

---

## 🌟 Project Overview

Customer churn can seriously impact the profitability and growth of subscription-based businesses. This project demonstrates a **complete end-to-end pipeline** to:

✅ Analyze customer behavior and demographics  
✅ Identify factors driving churn  
✅ Predict future churn using machine learning  
✅ Build interactive dashboards for stakeholders

> **Tech Stack:**
>
> - **Microsoft SQL Server:** Data ingestion, cleaning, transformation
> - **Python (scikit-learn):** Machine learning modeling
> - **Power BI:** Data visualization and storytelling
> - **Excel:** Intermediate data export/import

---

## 🎯 Objectives

- Clean and transform customer data in SQL Server
- Explore churn-related trends and patterns
- Develop a predictive model to classify churn risk
- Present findings with compelling dashboards

---

## ⚙️ Workflow Summary

The project has **4 main phases:**

---

### 1️⃣ Data Preparation in SQL Server

**Steps:**

- **Database Creation:**  
  Created `data_churn` database.
- **Data Import:**  
  Imported `customer_data.csv` into a staging table (`stg_churn`).
- **Data Cleaning:**  
  - Adjusted column types.
  - Standardized date formats.
  - Handled missing values.
- **Views for Analysis:**  
  - `vw_churn_data` – focus on churned customers.
  - `vw_joindatam` – track new sign-ups.

✅ **SQL Scripts:**  
[`codes/sql_data_preparation.sql`](codes/sql_data_preparation.sql)

---

### 2️⃣ Exploratory Churn Analysis Dashboard (Power BI)

Created an **interactive Power BI dashboard** to visualize:

- Demographics: Age, Gender
- Service usage: Internet, Phone services
- Account details: Payment methods, Contracts
- Geographic trends
- Churn distribution

✅ **Dashboard File:**  
[`codes/powerbi_churn_analysis.pbix`](codes/powerbi_churn_analysis.pbix)

---

### 3️⃣ Machine Learning Model for Churn Prediction

**Steps:**

- **Data Export:**  
  Exported clean data from SQL Server views to Excel.
- **Modeling:**  
  - Logistic Regression model using `scikit-learn`
  - Train/test split
  - Evaluation metrics
- **Results:**  
  - **Accuracy:** 96%
  - **Key Predictors:**
    - Monthly Income
    - Total Refunds
    - Total Revenue

✅ **Notebook:**  
[`codes/churn_prediction_logistic_regression.ipynb`](codes/churn_prediction_logistic_regression.ipynb)

✅ **Output:**  
`joined_data_predictions.csv`

---

### 4️⃣ Prediction Visualization Dashboard (Power BI)

Developed a second Power BI dashboard to:

- Show churn probability per customer
- Visualize relationships between refunds, revenue, references, and churn

✅ **Dashboard File:**  
[`codes/powerbi_churn_prediction.pbix`](codes/powerbi_churn_prediction.pbix)

---

## 📁 Project Structure

