-- CHALLENGE 8: Company Wide Increase (Moderate)
-- LINK: https://www.analystbuilder.com/questions/company-wide-increase-TytwW
-- GOAL: 
--      Give each Employee who is a level 1 a 10% increase, level 2 a 15% increase, and level 3 a 200% increase.
--      Include this new column in your output as "new_salary" along with your other columns.

SELECT *, 
  CASE
    WHEN Pay_Level = 1 THEN Salary * 1.1
    WHEN Pay_Level = 2 THEN Salary * 1.15
    WHEN Pay_Level = 3 THEN Salary * 3
    ELSE Salary
END as new_salary
FROM employees;