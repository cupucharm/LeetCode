# Write your MySQL query statement below
SELECT e.name 
FROM Employee e
JOIN Employee emp
ON e.id = emp.managerId
GROUP BY emp.managerId
HAVING COUNT(emp.managerId) >= 5;
