-- CHALLENGE 2: Apply Discount (Easy)
-- LINK: https://www.analystbuilder.com/questions/apply-discount-RdWhb
-- GOAL: Identify the number of customers who received the promotion discount issues
-- QUALIFICATION: Age > 65 OR Total Purchase > $200

SELECT COUNT(*)
FROM customers
WHERE age > 65 OR total_purchase > 200;