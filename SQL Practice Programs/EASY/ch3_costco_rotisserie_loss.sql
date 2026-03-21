-- CHALLENGE 3: Costco Rotisserie Loss (Easy)
-- LINK: https://www.analystbuilder.com/questions/costco-rotisserie-loss-kkCDh
-- GOAL: 
--    Calculate how much money they have lost on their rotisserie chickens this year. 
--    Round to the nearest whole number.

SELECT ROUND(SUM(lost_revenue_millions),0) AS total_lost_revenue_millions
FROM sales;