-- https://leetcode.com/problems/investments-in-2016/

WITH Counter AS (
    SELECT
        tiv_2016,
        COUNT(*) OVER(PARTITION by tiv_2015) AS tiv_2015,
        COUNT(*) OVER(PARTITION by lat, lon) AS cities
    FROM Insurance
)
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Counter
WHERE tiv_2015 > 1 AND cities = 1;