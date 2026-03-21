-- CHALLENGE 2: Separation (Moderate)
-- LINK: https://www.analystbuilder.com/questions/separation-DbHMu
-- GOAL: 
--    Separate the ID and First Name into two separate columns.
--    Each ID is 5 characters long.

SELECT SUBSTRING(id,1,5) AS ID, SUBSTRING(id,6) AS 'First Name'
FROM bad_data;