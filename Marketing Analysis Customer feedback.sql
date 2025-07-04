
--SELECT ReviewID,CustomerID, ProductId,ReviewDate,ReviewText, AVG(Rating) AS avg_rating
--FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]

--GROUP BY  ReviewID,CustomerID,ProductID,ReviewDate,ReviewText ;




USE  PortfolioProject_MarketingAnalytics;

DROP TABLE IF EXISTS dbo.KPI_AvgRating;


SELECT 
    ReviewID,
    CustomerID, 
    ProductId,
    ReviewDate,
    ReviewText, 
    AVG(Rating) AS avg_rating
INTO dbo.KPI_AvgRating
FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
GROUP BY ReviewID, CustomerID, ProductID, ReviewDate, ReviewText;


SELECT  *
FROM dbo.KPI_AvgRating;



**

--SELECT ReviewID,CustomerID, ProductId,ReviewDate,ReviewText, AVG(Rating) AS avg_rating
--FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]

--GROUP BY  ReviewID,CustomerID,ProductID,ReviewDate,ReviewText ;




USE  PortfolioProject_MarketingAnalytics;

DROP TABLE IF EXISTS dbo.KPI_AvgRating;


--SELECT 
  --  ReviewID,
  --  CustomerID, 
    --ProductId,
   -- ReviewDate,
    --ReviewText, 
   -- AVG(Rating) AS avg_rating
--INTO dbo.KPI_AvgRating
--FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
--GROUP BY ReviewID, CustomerID, ProductID, ReviewDate, ReviewText;


--SELECT  *
--FROM dbo.KPI_AvgRating;


 SELECT 
  
      ProductID 
    
    ,AVG(Rating) AS average_rating
    INTO dbo.KPI_AvgRating
FROM 
    [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
GROUP BY 
      
      ProductID
     
    
     ;



**



USE  PortfolioProject_MarketingAnalytics;

DROP TABLE IF EXISTS dbo.KPI_AvgRating;


--SELECT 
  --  ReviewID,
  --  CustomerID, 
    --ProductId,
   -- ReviewDate,
    --ReviewText, 
   -- AVG(Rating) AS avg_rating
--INTO dbo.KPI_AvgRating
--FROM [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
--GROUP BY ReviewID, CustomerID, ProductID, ReviewDate, ReviewText;


--SELECT  *
--FROM dbo.KPI_AvgRating;


 SELECT 
  
      ProductID 
    
    ,AVG(Rating) AS average_rating
    INTO dbo.KPI_AvgRating
FROM 
    [PortfolioProject_MarketingAnalytics].[dbo].[customer_reviews]
GROUP BY 
      
      ProductID
     
    
     ;