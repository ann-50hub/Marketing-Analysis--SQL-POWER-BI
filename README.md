




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


![](https://github.com/ann-50hub/Marketing-Analysis--SQL-POWER-BI/blob/main/Conversion%20Rate.png?raw=true)

- 📈 Customer Engagement Tracking

Displays metrics like clicks, likes, and views across various marketing channels and campaigns.

- 🌟 Customer Feedback Score Monitoring

Shows the average customer ratings over time, with detailed breakdowns by product category.




## 📌 Business Insights
 🔁 Customer Behavior & Conversion Insights
  
Fluctuating Conversion Rate: From 2023 to 2025, there is a noticeable decline in conversion rate. Increased rate in Q4 2023 and Q3 2024 suggest that seasonal campaigns or promotions were more effective.

Drop in Purchases: While total customers remained relatively stable, the number of purchasing customers has gradually decreased—indicating possible friction in the buying process.


🎯 Customer Engagement Insights
Sharp Decline in Engagement: Across all metrics—views, likes, and clicks—there’s a significant drop in customer interaction after 2023.

Top-Performing Content: In 2023, blogs and social media outperformed other content types in driving engagement. These formats could be prioritized for future campaigns.

Shift in Preferences: By 2025, engagement with all content types is minimal. This suggests the need for content strategy refresh to realign marketing efforts.





