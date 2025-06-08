-- https://leetcode.com/problems/triangle-judgement/

SELECT
    x, 
    y, 
    z,
    CASE WHEN x + y <= z THEN 'No'
        WHEN y + z <= x THEN 'No'
        WHEN z + x <= y THEN 'No'
        ELSE 'Yes' END AS triangle
FROM Triangle;