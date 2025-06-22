-- https://leetcode.com/problems/restaurant-growth/

WITH DateRange AS (
    SELECT DISTINCT visited_on
    FROM Customer
    WHERE visited_on >= (
        SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
        FROM Customer
    )
)
SELECT 
    d.visited_on, 
    SUM(amount) AS amount, 
    ROUND(SUM(amount) / 7 , 2) AS average_amount
FROM DateRange d
LEFT JOIN Customer c
ON DATEDIFF(d.visited_on, c.visited_on) BETWEEN 0 AND 6
GROUP BY d.visited_on;