-- CHALLENGE 10: Heart Attack Risk (Easy)
-- LINK: https://www.analystbuilder.com/questions/heart-attack-risk-FKfdn
-- GOAL: 
--    Retrieve patients that are:
--       over the age of 50, 
--       cholesterol level of 240 or over, 
--       and weight 200 or greater
--    Include all columns in your output.
--    Order the output by Cholesterol from Highest to Lowest

SELECT *
FROM patients
WHERE age > 50 AND cholesterol >= 240 AND weight >= 200
ORDER BY cholesterol DESC;