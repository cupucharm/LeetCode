SELECT
    ( CASE 
        WHEN id % 2 = 1 AND (SELECT COUNT(*) FROM Seat) > id THEN id + 1
        WHEN id % 2 = 0 THEN id - 1 
        ELSE id 
        END 
    ) AS id,
    student
FROM Seat
ORDER BY id

-- id 가 홀수면 다음 id의 student
  -- 전체 count가 홀수면 마지막 id는 변함 없어야 함
-- id 가 짝수면 이전 id의 student