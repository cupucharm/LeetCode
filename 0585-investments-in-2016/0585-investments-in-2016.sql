-- 한 명 이상의 다른 보험 계약자와 동일한 tiv_2015 값을 가지며
-- 다른 정책 계약자와 같은 도시에 위치하지 않는(=lat, lon 쌍 값이 겹치지 않는)
-- 보험 계약자의 tiv_2016를 합해 소수점 2자리까지 반올림해 나타내야 한다

SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE 
tiv_2015 IN 
    (SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1)
AND (lat, lon) IN (SELECT lat, lon FROM Insurance
                    GROUP BY CONCAT(lat, lon)
                    HAVING COUNT(*) = 1);