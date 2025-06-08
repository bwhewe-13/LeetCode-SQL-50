-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

SELECT e1.employee_id, 
    e1.name, 
    COUNT(e2.reports_to) AS reports_count,
    ROUND(AVG(e2.age), 0) AS average_age
FROM Employees e1
INNER JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e2.reports_to
ORDER BY e1.employee_id;