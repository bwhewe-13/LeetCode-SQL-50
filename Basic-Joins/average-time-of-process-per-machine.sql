-- https://leetcode.com/problems/average-time-of-process-per-machine/

SELECT start.machine_id, 
    ROUND(AVG(stop.timestamp - start.timestamp),3) AS processing_time
FROM Activity start
INNER JOIN Activity stop 
ON start.process_id = stop.process_id
    AND start.activity_type = 'start' AND stop.activity_type = 'end'
    AND start.machine_id = stop.machine_id
GROUP BY start.machine_id;