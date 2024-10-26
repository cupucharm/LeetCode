SELECT id, SUM(num) as num
FROM
((SELECT requester_id AS id, COUNT(requester_id) AS num
FROM RequestAccepted
GROUP BY requester_id)

UNION ALL

(SELECT accepter_id AS id, COUNT(accepter_id) AS num
FROM RequestAccepted
GROUP BY accepter_id)
) AS temp
GROUP BY id
ORDER BY num desc
Limit 1;