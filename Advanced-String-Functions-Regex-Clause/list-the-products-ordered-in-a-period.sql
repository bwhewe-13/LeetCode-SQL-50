-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/

SELECT 
    p.product_name, 
    SUM(o.unit) AS unit
FROM Products p
INNER JOIN Orders o
ON p.product_id = o.product_id
WHERE YEAR(o.order_date) = 2020
    AND MONTH(o.order_date) = 2
GROUP BY p.product_name
HAVING unit > 99;