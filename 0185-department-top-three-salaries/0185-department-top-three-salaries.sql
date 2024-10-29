SELECT Department, Employee, Salary
FROM
(
    SELECT DENSE_RANK() OVER(partition by d.id ORDER BY e.salary DESC) AS num, 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary
    FROM Employee e 
    JOIN Department d
    ON e.departmentId = d.id
) AS temp
WHERE num <= 3;



-- 급여순 정렬
-- 제일 높은 곳에서부터 찾기
-- 부서당 3명까지