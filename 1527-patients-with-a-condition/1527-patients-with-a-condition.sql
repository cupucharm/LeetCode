SELECT *
FROM Patients
WHERE conditions like 'DIAB1%' 
    OR conditions like '% DIAB1%';

-- 접두사로 DIAB1 올 수 있다 주의 