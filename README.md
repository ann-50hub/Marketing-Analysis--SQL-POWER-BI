




# 🚀 Marketing Analysis – SQL & Power BI

![Power BI](https://img.shields.io/badge/Tool-Power%20BI-yellow?logo=powerbi)
![Status](https://img.shields.io/badge/status-Completed-brightgreen)

---

>**Marketing Analytics Project for Customer Behavior Insights and Strategic Decision-Making**
---

## 📊 Project Overview

- The Marketing Analysis project leverages SQL Server for data processing and Power BI for building an interactive dashboard to provide actionable insights into customer engagement, conversion rates, and feedback performance.
---
## 🛠️ Tools & Technologies

- 🛢️ SQL Server – Data querying, transformation, and cleaning.

- 📊 Power BI – Dashboard creation and data storytelling.

- 📄 Excel/CSV – Raw marketing data source.

- 🧬 GitHub – Version control and project portfolio.

---
## 🗂️ Source Data
- **Data Source**: PortfolioProject_MarketingAnalytics (SQL Server Database).
  
- **Access Tool**: SQL Server Management Studio (SSMS).

- **Connection Method**: Power BI connected to SQL Server via native SQL connector (Import Mode).

- **Data Preparation**: Performed in SSMS using SQL queries.

- **Tables Used**:

  -  Customer Journey Table: Track customer movements through the website to analyse the conversion funnel.

  -  Engagement Data Table: Measure Engagement with different types of contents.

  -  Customer Review Table: Analyse customer feedback to identify common themes.

  -  Customer Table: Provide additional information about the customers.

  -  Geographic Table: Provide additional geographic information about the customers.

  -  Product Table: Provide additional information about the products.
  
-  🗃️ Data Model – SQL Tables
  
- 📁 Dimension Tables:
  
  - dim_customers.sql

  - dim_products.sql

- 📁 Fact Tables:   
   
  -  fact_customer_reviews.sql

  - fact_engagement_data.sql

  - fact_customer_journey.sql



---
## 🧾Business Problems


The dashboard was developed to meet the following needs:

- 🔻  Reduced Customer Engagement


- 📉 Decreased Conversion rate

- 💬 Need for customer feedback analysis



---
 
##  🛠️ Data Preparation with SQL

Raw data was cleaned and transformed in SQL Server with the following steps:

- 📅 Standardized date formats

- 🔗 Joined multiple tables for a consolidated data model

  ---


## 🔑 KPI Metrics



| KPI                                  | Description                                   |
|------------------|-----------------------------------------------|
| 🔁 Conversion Rate    | % of website visitors who completed a purchase|
| 🎯  Engagement Rate  | Level of Interactions with marketing contents                             |
| 🌟 Customer Feedback Score | Average rating from customer reviews              |


---

## 🧾Sample sql snippets:


<pre> ``` SELECT   A.VisitDate,(B.PurchasedCustomers) AS 'PurchasedCustomers' ,COUNT(CustomerID) AS 'TotalCustomers',round(cast(100*PurchasedCustomers as float)/cast(COUNT(CustomerID) AS float),2) as factor
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_journey] A
  Join
  
  (SELECT   VisitDate,COUNT(CustomerID) AS 'PurchasedCustomers'
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_journey]
 WHERE Action='Purchase'
 GROUP BY VisitDate) B 
 
 
 ON A.VisitDate = B.VisitDate
 GROUP BY A.VisitDate,B.PurchasedCustomers
 ORDER BY A.VisitDate;```</pre> 


---  




## 📊 Power BI Dashboard Features

- 🎯 Interactive Conversion Rate Analysis

Visualizes the percentage of website visitors who made a purchase, with dynamic filters by device type.

- 📈 Customer Engagement Tracking

Displays metrics like clicks, likes, and views across various marketing channels and campaigns.

- 🌟 Customer Feedback Score Monitoring

Shows the average customer ratings over time, with detailed breakdowns by product category.








