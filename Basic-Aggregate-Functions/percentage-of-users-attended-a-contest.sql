-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/

SELECT contest_id, 
    ROUND(100 * COUNT(user_id)/(SELECT count(*) FROM Users), 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;