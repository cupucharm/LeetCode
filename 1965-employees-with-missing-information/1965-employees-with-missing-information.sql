(SELECT e.employee_id AS employee_id
FROM Employees e
LEFT OUTER JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE s.salary is null)

UNION

(SELECT s.employee_id AS employee_id
FROM Salaries s
LEFT OUTER JOIN Employees e
ON e.employee_id = s.employee_id
WHERE e.name is null)

ORDER BY employee_id;