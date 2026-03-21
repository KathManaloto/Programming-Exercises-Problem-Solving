-- CHALLENGE 7: Bike Price (Moderate)
-- LINK: https://www.analystbuilder.com/questions/bike-price-zKcOR
-- GOAL: 
--      Show the average sale price of bikes for only bikes that were sold, and not donated.
--      Round answer to 2 decimal places.

SELECT ROUND(AVG(bike_price),2) AS average_sale_price
FROM inventory
WHERE bike_sold = 'Y' AND bike_price IS NOT NULL;