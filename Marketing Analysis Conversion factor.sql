








  SELECT   A.VisitDate,(B.PurchasedCustomers) AS 'PurchasedCustomers' ,COUNT(CustomerID) AS 'TotalCustomers',round(cast(100*PurchasedCustomers as float)/cast(COUNT(CustomerID) AS float),2) as factor
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_journey] A
  Join
  
  (SELECT   VisitDate,COUNT(CustomerID) AS 'PurchasedCustomers'
  FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_journey]
 WHERE Action='Purchase'
 GROUP BY VisitDate) B 
 
 
 ON A.VisitDate = B.VisitDate
 GROUP BY A.VisitDate,B.PurchasedCustomers
 ORDER BY A.VisitDate;