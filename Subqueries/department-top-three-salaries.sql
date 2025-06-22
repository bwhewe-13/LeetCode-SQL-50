-- https://leetcode.com/problems/department-top-three-salaries/

WITH Ranking AS (
    SELECT
        departmentId,
        name,
        salary,
        DENSE_RANK() OVER(
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS place
    FROM Employee
)
SELECT 
    d.name AS Department,
    r.name AS Employee,
    r.salary AS Salary
FROM Ranking r
LEFT JOIN Department d
ON r.departmentId = d.id
WHERE r.place <= 3;
