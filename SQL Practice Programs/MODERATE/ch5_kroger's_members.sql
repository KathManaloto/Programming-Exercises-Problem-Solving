-- CHALLENGE 5: Kroger's Members (Moderate)
-- LINK: https://www.analystbuilder.com/questions/krogers-members-FjyKN
-- GOAL: 
--      Find the percentage of customers who shop at Kroger's who also have a Kroger's membership card. 
--      Round to 2 decimal places.

SELECT ROUND((COUNT(has_member_card = 'Y')/COUNT(kroger_id) *100),2) AS cx_pct
FROM customers;