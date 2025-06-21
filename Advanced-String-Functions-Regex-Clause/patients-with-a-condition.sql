-- https://leetcode.com/problems/patients-with-a-condition/

SELECT *
FROM Patients
WHERE conditions REGEXP '^DIAB1| DIAB1';