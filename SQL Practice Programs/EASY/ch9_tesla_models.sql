-- CHALLENGE 9: Tesla Models (Easy)
-- LINK: https://www.analystbuilder.com/questions/tesla-models-soJdJ
-- GOAL: 
--    Determine which Tesla Model has made the most profit.
--    Include all columns with the "profit" column at the end.

SELECT *,
  ((car_price * cars_sold) - (production_cost*cars_sold)) AS profit
FROM tesla_models
ORDER BY profit DESC
LIMIT 1;