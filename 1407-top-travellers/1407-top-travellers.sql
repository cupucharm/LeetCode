SELECT u.name AS name, 
    IFNULL(SUM(r.distance), 0) AS travelled_distance
FROM Users u
LEFT JOIN Rides r ON r.user_id = u.id
GROUP BY r.user_id
ORDER BY SUM(r.distance) desc, u.name;