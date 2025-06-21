-- https://leetcode.com/problems/delete-duplicate-emails/

WITH minimum AS (
    SELECT MIN(id) AS id
    FROM Person
    GROUP BY email
)
DELETE FROM Person
WHERE id NOT IN (SELECT id FROM minimum);