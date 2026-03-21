-- CHALLENGE 2: Kelly's 3rd Purchase (Hard)
-- LINK: https://www.analystbuilder.com/questions/kellys-3rd-purchase-kFaIE
-- GOAL: 
--      At Kelly's Ice Cream Shop, Kelly gives a 33% discount on each customer's 3rd purchase.
--      Write a query to select the 3rd transaction for each customer that received that discount. Output the customer id, transaction id, amount, and the amount after the discount as "discounted_amount".
--      Order output on customer ID in ascending order.
--      Note: Transaction IDs occur sequentially. The lowest transaction ID is the earliest ID.

WITH cte_transactions AS
(
  SELECT 
      customer_id, 
      transaction_id, 
      amount,  
      ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY transaction_id) AS row_num
  FROM purchases
)
SELECT 
      customer_id, 
      transaction_id, 
      amount, 
      (amount - (0.33*amount)) AS discounted_amount
FROM cte_transactions
WHERE row_num = 3
ORDER BY customer_id ASC;