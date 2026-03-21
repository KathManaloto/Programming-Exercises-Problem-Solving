-- CHALLENGE 6: Food Divides Us (Moderate)
-- LINK: https://www.analystbuilder.com/questions/food-divides-us-GvhLL
-- GOAL: 
--      Write a query to determine which region spends the most amount of money on fast food.

SELECT region
FROM food_regions
GROUP BY region
ORDER BY SUM(fast_food_millions) DESC
LIMIT 1;

-- OR
WITH cte_total_spending AS
(
SELECT region,  SUM(fast_food_millions) AS total_spending
FROM food_regions
GROUP BY region
ORDER BY total_spending DESC
LIMIT 1
)
SELECT region
FOM cte_total_spending;