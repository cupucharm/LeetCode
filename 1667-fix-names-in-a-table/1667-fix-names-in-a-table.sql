SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(substr(name, 2))) AS name
FROM Users
ORDER BY user_id;

-- 전체를 소문자로 바꾼뒤
-- 맨 앞글자만 대문자로 바꾸고 + 맨앞글자 제거
-- concat으로 이어 붙이기