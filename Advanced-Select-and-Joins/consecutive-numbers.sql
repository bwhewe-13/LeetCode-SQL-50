-- https://leetcode.com/problems/consecutive-numbers/

WITH cte AS (
    SELECT
        num AS num1,
        LAG(num, 1) OVER() AS num2,
        LAG(num, 2) OVER() AS num3
    FROM Logs
)

SELECT DISTINCT num1 AS ConsecutiveNums
FROM cte
WHERE num1 = num2 AND
    num1 = num3;


-- SELECT DISTINCT a.Num As ConsecutiveNums
-- FROM Logs a, Logs b, Logs c
-- WHERE a.Num = b.Num
--     AND b.Num = c.Num
--     AND a.Id = b.Id + 1
--     AND b.Id = c.Id + 1;
