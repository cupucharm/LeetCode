SELECT score, dense_rank() OVER(ORDER BY score DESC) AS `rank`
FROM Scores
ORDER BY 2;