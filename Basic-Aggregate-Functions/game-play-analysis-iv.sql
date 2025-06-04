-- https://leetcode.com/problems/game-play-analysis-iv/

WITH
    FirstLog AS (
        SELECT player_id, MIN(event_date) AS first_login
        FROM Activity
        GROUP BY 1
    )

SELECT 
    ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM Activity a
INNER JOIN FirstLog b
ON a.player_id = b.player_id 
    AND ABS(DATEDIFF(a.event_date, b.first_login)) = 1;