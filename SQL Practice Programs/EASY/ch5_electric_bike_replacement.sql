-- CHALLENGE 5: Electric Bike Replacement (Easy)
-- LINK: https://www.analystbuilder.com/questions/electric-bike-replacement-ZaFie
-- GOAL: 
--    Determine the amount of bikes that currently need to be replaced. (miles > 10000)

SELECT COUNT(*) AS number_of_electric_bikes
FROM bikes
WHERE miles > 10000;