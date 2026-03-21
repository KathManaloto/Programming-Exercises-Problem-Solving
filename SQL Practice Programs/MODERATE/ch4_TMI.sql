-- CHALLENGE 4: TMI (Too Much Information) (Moderate)
-- LINK: https://www.analystbuilder.com/questions/tmi-too-much-information-VyNhZ
-- GOAL: 
--     Return the customer ID with only the first name of each customer.

SELECT customer_id, SUBSTRING_INDEX(full_name, ' ',1) AS first_name
FROM customers
LIMIT 10;