--SELECT TOP (1000) [EngagementID]
     -- ,[ContentID]
     -- ,[ContentType]
     -- ,[Likes]
     -- ,[EngagementDate]
      --,[CampaignID]
      --,[ProductID]
      --,[ViewsClicksCombined]
 -- FROM [PortfolioProject_MarketingAnalytics].[dbo].[engagement_data]


 -- SELECT ContentType, SUM(Likes) AS total_likes
--FROM dbo.engagement_data
--GROUP BY ContentType
--ORDER BY total_likes ;


USE  PortfolioProject_MarketingAnalytics;
DROP TABLE IF EXISTS dbo.HighestContentKPI;

SELECT ContentType,EngagementDate,
    SUM(Likes)  AS total_likes,
    sum(CAST(LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS INT)) AS views,
    sum(CAST(LTRIM(RIGHT(ViewsClicksCombined, LEN( ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined))) AS INT)) AS clicks
 INTO dbo.HighestContentKPI
    
FROM dbo.engagement_data
GROUP BY ContentType,EngagementDate;

    


--ORDER BY total_views, total_clicks 






--SELECT * FROM dbo.engagement_data;