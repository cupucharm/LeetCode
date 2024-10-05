# Write your MySQL query statement below
SELECT p.product_id, ROUND(IFNULL(sum(p.price * s.units) / sum(s.units), 0) , 2) as average_price
FROM Prices p
LEFT OUTER JOIN UnitsSold s
ON p.product_id = s.product_id
AND s.purchase_date between p.start_date and p.end_date
GROUP BY p.product_id;