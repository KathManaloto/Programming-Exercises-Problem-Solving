-- CHALLENGE 3: Shrink-flation (Moderate)
-- LINK: https://www.analystbuilder.com/questions/shrink-flation-ohNJw
-- GOAL: 
--     Write a query to identify products that have undergone shrink-flation over the last year. 

SELECT 
  product_name AS Product_Name,
  ROUND(((new_size - original_size)/original_size)*100,0) AS Size_Change_Percentage,
  ROUND(((new_price - original_price)/original_price)*100,0) AS Price_Change_Percentage, 
  CASE
    WHEN new_size < original_size AND new_price >= original_price THEN 'True'
    ELSE 'False'
  END AS Shrinkflation_Flag
FROM products
WHERE (new_size - original_size) < 0 AND (new_price - original_price >= 0) 
ORDER BY product_name ASC;