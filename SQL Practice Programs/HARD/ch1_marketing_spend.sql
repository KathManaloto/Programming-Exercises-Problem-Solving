-- CHALLENGE 1: Marketing Spend (Hard)
-- LINK: https://www.analystbuilder.com/questions/marketing-spend-mrTJL
-- GOAL: 
--      John created a new Social Media App and has just started advertising it to the world! He collected some data, but wants to see which marketing campaigns performed the best.
--      Write a query to calculate the Return on Investment (ROI) for each campaign and identify the top 25% of campaigns that have the highest ROI. The ROI is calculated as ((Revenue Generated - Investment) / Investment * 100). Round ROI to the nearest whole number.
--      The output should have the columns Campaign_ID, Campaign_Name, and ROI, and should be ordered by ROI in descending order and Campaign_ID in descending order. Only include the top 25% of campaigns with the highest ROI.

WITH cte_pct_rank AS
(
  SELECT
      campaign_id, 
      campaign_name, 
      ROUND(((revenue_generated - investment)/investment*100),0) AS ROI,
      PERCENT_RANK() OVER(ORDER BY (revenue_generated - investment)/investment DESC) as pct_rank
  FROM marketing_spend
)
SELECT campaign_id,
       campaign_name, 
       ROI
FROM cte_pct_rank
WHERE pct_rank <= 0.25
ORDER BY ROI DESC, campaign_id DESC;