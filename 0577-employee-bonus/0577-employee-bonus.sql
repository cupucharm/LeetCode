# Write your MySQL query statement below
SELECT e.name, b.bonus 
FROM Employee e 
LEFT OUTER JOIN Bonus b 
ON e.empId = b.empId
WHERE IFNULL(b.bonus, 0) < 1000;