(
    SELECT u.name AS results
    FROM MovieRating r JOIN Users u ON r.user_id = u.user_id
    GROUP BY r.user_id
    ORDER BY count(r.user_id) desc, u.name asc
    limit 1
)
UNION ALL
(
    SELECT m.title AS results
    FROM MovieRating r JOIN Movies m ON r.movie_id = m.movie_id
    WHERE LEFT(created_at, 7) = '2020-02'
    GROUP BY m.movie_id
    ORDER BY AVG(r.rating) desc, m.title asc
    limit 1
);