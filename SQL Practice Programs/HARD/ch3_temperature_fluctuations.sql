-- CHALLENGE 3: Temperature Fluctuations (Hard)
-- LINK: https://www.analystbuilder.com/questions/temperature-fluctuations-ftFQu
-- GOAL: 
--      Write a query to find all dates with higher temperatures compared to the previous dates (yesterday).
--      Order dates in ascending order.

WITH date_temp_cte AS
(
  SELECT 
      `date`, 
      temperature,
      LAG(temperature) OVER(ORDER BY `date`) AS previous_temp
  FROM temperatures
) 
SELECT `date`
FROM date_temp_cte
WHERE temperature > previous_temp
ORDER BY `date` ASC;