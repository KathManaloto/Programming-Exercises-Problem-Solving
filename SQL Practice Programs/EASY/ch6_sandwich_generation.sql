-- CHALLENGE 6: Sandwich Generation (Easy)
-- LINK: https://www.analystbuilder.com/questions/sandwich-generation-excIi
-- GOAL: 
--    Output every possible combination of bread and meats.
--    Order by the bread and then meat alphabetically. 

SELECT bt.bread_name, mt.meat_name
FROM bread_table AS bt
CROSS JOIN meat_table AS mt
ORDER BY bt.bread_name ASC, mt.meat_name ASC;