SELECT (CASE WHEN COUNT(*) <= 0 THEN null ELSE salary END) AS SecondHighestSalary
FROM (
    SELECT *
    FROM Employee
    GROUP BY salary
    ORDER BY salary desc
    limit 1, 1
) AS temp;