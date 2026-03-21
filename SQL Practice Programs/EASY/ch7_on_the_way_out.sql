-- CHALLENGE 7: On The Way Out (Easy)
-- LINK: https://www.analystbuilder.com/questions/on-the-way-out-LGNoQ
-- GOAL: 
--    Identify the ids of the three oldest employees.
--    Order output from oldest to youngest.

SELECT employee_id
FROM employees
  ORDER BY birth_date ASC
LIMIT 3;