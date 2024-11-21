SELECT distinct t1.id AS id,
    (
        CASE WHEN t1.p_id is null THEN 'Root'
        WHEN t2.id is not null THEN 'Inner'
        ELSE 'Leaf' END
    ) AS type
FROM Tree t1
LEFT OUTER JOIN Tree t2 ON t1.id = t2.p_id;