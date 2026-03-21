-- CHALLENGE 4: Cake vs Pie (Hard)
-- LINK: https://www.analystbuilder.com/questions/cake-vs-pie-rSDbF
-- GOAL: 
--     Report the difference between the number of Cakes and Pies sold each day.
--     Output should include the date sold, the difference between cakes and pies, and which one sold more (cake or pie). The difference should be a positive number.
--     Return the result table ordered by Date_Sold.
--     Columns in output should be date_sold, difference, and sold_more.

SELECT 
    date_sold, 
    ABS(SUM(CASE WHEN product = 'Cake' THEN amount_sold ELSE 0 END) -
        SUM(CASE WHEN product = 'Pie' THEN amount_sold ELSE 0 END)) AS difference,
    CASE 
        WHEN (SUM(CASE WHEN product = 'Cake' THEN amount_sold ELSE 0 END) >
               SUM(CASE WHEN product = 'Pie' THEN amount_sold ELSE 0 END))
        THEN 'Cake'
        ELSE 'Pie'
    END AS sold_more
FROM desserts
GROUP BY date_sold
ORDER BY date_sold;