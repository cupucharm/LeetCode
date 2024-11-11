UPDATE Salary
SET sex = (
    CASE WHEN lower(sex) = 'm' THEN 'f'
    ELSE 'm' END
);