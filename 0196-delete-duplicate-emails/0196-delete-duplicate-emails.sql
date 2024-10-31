DELETE
FROM Person
WHERE id 
    IN (
        SELECT id FROM (
            SELECT p2.id AS id
            FROM Person p1 
            JOIN Person p2 
            ON p1.email = p2.email 
            WHERE p2.id > p1.id
        ) AS temp
    );