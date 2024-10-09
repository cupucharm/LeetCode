# Write your MySQL query statement below
SELECT ROUND((SUM(order_date = customer_pref_delivery_date) / COUNT(*)) * 100, 2) AS immediate_percentage
FROM Delivery
WHERE order_date 
IN ( SELECT MIN(order_date) FROM Delivery GROUP BY customer_id );