# Write your MySQL query statement below
SELECT start.machine_id, Round(AVG(end.timestamp - start.timestamp), 3) as processing_time 
FROM Activity start 
JOIN Activity end 
ON start.machine_id = end.machine_id 
AND start.process_id = end.process_id
WHERE start.activity_type = 'start' AND end.activity_type = 'end'
GROUP BY machine_id;