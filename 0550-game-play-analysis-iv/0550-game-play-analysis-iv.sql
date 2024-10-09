# Write your MySQL query statement below
SELECT 
    ROUND((COUNT(a.player_id)/COUNT(DISTINCT FIRST_LOGIN.player_id)), 2) AS fraction 
FROM
    (SELECT player_id, MIN(event_date) as event_date
        FROM Activity
        GROUP BY player_id) AS FIRST_LOGIN
LEFT OUTER JOIN Activity a
ON 
a.player_id = FIRST_LOGIN.player_id
AND a.event_date = DATE_ADD(FIRST_LOGIN.event_date, INTERVAL 1 day);