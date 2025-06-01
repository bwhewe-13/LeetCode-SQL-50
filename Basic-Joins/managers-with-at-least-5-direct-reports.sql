-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

SELECT a.name 
FROM Employee a
JOIN (
    SELECT managerID
    FROM Employee
    GROUP BY managerID
    HAVING COUNT(managerID) > 4
) b
ON a.id = b.managerID;
