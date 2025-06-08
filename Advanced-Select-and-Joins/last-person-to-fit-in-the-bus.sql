-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/

SELECT
    person_name
FROM (SELECT 
        person_name,
        turn, 
        SUM(weight) OVER(ORDER BY turn) AS bus_weight
      FROM Queue) a
WHERE bus_weight <= 1000
ORDER BY bus_weight DESC
LIMIT 1;