# Write your MySQL query statement below
-- SELECT a.id FROM Weather a 
-- LEFT OUTER JOIN Weather b 
-- ON a.recordDate = (b.recordDate + 1)  
-- WHERE a.temperature > b.temperature;

-- SELECT a.id FROM Weather a 
-- LEFT OUTER JOIN Weather b 
-- ON DATE_ADD(b.recordDate, INTERVAL 1 DAY) = a.recordDate
-- WHERE a.temperature > b.temperature;

SELECT a.id FROM Weather a 
LEFT OUTER JOIN Weather b 
ON DATEDIFF(a.recordDate, b.recordDate) = 1
WHERE a.temperature > b.temperature;