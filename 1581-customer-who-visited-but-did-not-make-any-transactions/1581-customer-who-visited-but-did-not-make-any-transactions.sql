# Write your MySQL query statement below
-- SELECT customer_id, count(visit_id) as count_no_trans
-- FROM Visits
-- WHERE visit_id not in (SELECT visit_id FROM Transactions) 
-- GROUP BY customer_id;

SELECT v.customer_id, count(v.visit_id) as count_no_trans
FROM Visits v LEFT OUTER JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id is null
GROUP BY v.customer_id;