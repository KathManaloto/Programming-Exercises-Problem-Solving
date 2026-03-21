-- CHALLENGE 11: Million Dollar Store (Easy)
-- LINK: https://www.analystbuilder.com/questions/million-dollar-store-ARdQa
-- GOAL: 
--     Write a query that returns all of the stores whose average yearly revenue is greater than one million dollars.
--     Output the store ID and average revenue. Round the average to 2 decimal places.
--     Order by store ID.

SELECT store_id, ROUND(AVG(revenue),2) AS avg_revenue
FROM stores
GROUP BY store_id
HAVING avg_revenue > 1000000
ORDER BY store_id;