SELECT u.user_id AS buyer_id
    , u.join_date AS join_date
    , SUM(CASE WHEN YEAR(o.order_date) = 2019 THEN 1 ELSE 0 END) AS orders_in_2019
FROM Users u
LEFT OUTER JOIN Orders o
ON u.user_id = o.buyer_id
GROUP BY u.user_id
ORDER BY u.user_id;