# Write your MySQL query statement below
SELECT contest_id, ROUND(((COUNT(user_id) / (SELECT COUNT(*) FROM Users)) * 100), 2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY 2 desc, 1;