-- CHALLENGE 8: Chocolate (Easy)
-- LINK: https://www.analystbuilder.com/questions/chocolate-vPiUY
-- GOAL: 
--    Return bakery items that contain the word "Chocolate"

SELECT *
FROM bakery_items
WHERE product_name LIKE '%Chocolate%';