 # 🚀Marketing-Analysis--SQL-POWER-BI
Project Overview:

This repository contains the code and documentation for a Marketing analysis project. 
---Objective. 

The project involved data collection, processing, and visualization to derive actionable insights for decision-making.

Tools Used:

* SQL Server – for querying, transforming, and cleaning data.


* Power BI – for interactive dashboard creation and storytelling


* Excel / CSV – as the raw data source


* GitHub – Version control and portfolio hosting

Business Problems:

* Reduced Customer Engagement

* Decreased Conversion rate

* Need for customer feedback analysis

Dimension and Fact Tables In sql:

* dim_customers.sql

* dim_products.sql

* fact_customer_reviews.sql

* fact_engagement_data.sql

* fact_customer_journey.sql



Data Preparation with SQL:

The raw marketing data was cleaned and transformed using SQL with the following steps:

* Standardized date formats

* Joined multiple tables for unified reporting

Created KPIs:

* Conversion Rate: Percentage of website visitors who makes a purchase.

* Customer Engagement Rate: Level of interactions with marketing contents(clicks,likes,views).

* Customer feedback score: Average ratings from customer reviews.

Sample sql snippets:


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


 Power Bi Dashboard Features:
 
 * Interactive Conversion Rate Analysis:
 
Visualizes the percentage of website visitors who made a purchase, with filters by device type.

 * Customer Engagement Tracking:

Displays engagement metrics like clicks, likes, and views across different marketing channels and campaigns.

* Customer Feedback Score Monitoring:

Shows average customer ratings over time, with breakdowns by product category.



 !



 Key Insights:




# 🚀 Marketing Analysis – SQL & Power BI

![Power BI](https://img.shields.io/badge/Tool-Power%20BI-yellow?logo=powerbi)
![Status](https://img.shields.io/badge/status-Completed-brightgreen)


>**Marketing Analytics Project for Customer Behavior Insights and Strategic Decision-Making**

## 📊 Project Overview

The Marketing Analysis project leverages SQL Server for data processing and Power BI for building an interactive dashboard to provide actionable insights into customer engagement, conversion rates, and feedback performance.

## 🛠️ Tools & Technologies

- 🛢️ SQL Server – Data querying, transformation, and cleaning

- 📊 Power BI – Dashboard creation and data storytelling

- 📄 Excel/CSV – Raw marketing data source

- 🧬 GitHub – Version control and project portfolio


## 🗂️ Source Data
- **Data Source**: Marketing-Analysis--SQL-POWER-BI (SQL Server Database)
  
- **Access Tool**: SQL Server Management Studio (SSMS)

- **Connection Method**: Power BI connected to SQL Server via native SQL connector (Import Mode)

- **Data Preparation**: Performed in SSMS using SQL queries

- **Tables Used**:
-  🗃️ Data Model – SQL Tables
  
- 📁 Dimension Tables:
  
  
  - dim_customers.sql

  - dim_products.sql

- 📁 Fact Tables:   
  
    
  -  fact_customer_reviews.sql

  - fact_engagement_data.sql

  - fact_customer_journey.sql




## 🧾Business Problems


The dashboard was developed to meet the following needs:
- 🔻  Reduced Customer Engagement


- 📉 Decreased Conversion rate

- 💬 Need for customer feedback analysis




 
##  🛠️ Data Preparation with SQL

Raw data was cleaned and transformed in SQL Server with the following steps:

- 📅 Standardized date formats

- 🔗 Joined multiple tables for a consolidated data model




  




