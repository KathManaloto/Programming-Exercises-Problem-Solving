-- CHALLENGE 10: Senior Citizen Discount (Moderate)
-- LINK: https://www.analystbuilder.com/questions/senior-citizen-discount-fRxVJ
-- GOAL: 
--      Return all of the Customer IDs who qualify for the senior citizen discount in ascending order.

SELECT customer_id
FROM customers
WHERE TIMESTAMPDIFF(YEAR, birth_date, '2023-01-01') >= 55
ORDER BY customer_id ASC;