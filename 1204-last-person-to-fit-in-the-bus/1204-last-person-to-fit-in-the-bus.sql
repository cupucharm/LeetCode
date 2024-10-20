SELECT person_name
FROM (
    SELECT person_name, 
        SUM(weight) OVER (ORDER BY turn) as total_weight
    FROM Queue
    ORDER BY turn DESC
) AS sub
WHERE total_weight <= 1000
LIMIT 1;