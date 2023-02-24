-- TASK #1
-- ПО ВОЗРАСТАНИЮ
SELECT * FROM staff
ORDER BY salary;
-- ПО УБЫВАНИЮ
SELECT * FROM staff
ORDER BY salary DESC;

-- TASK #2
SELECT id, salary FROM staff
ORDER BY salary DESC
LIMIT 5;

-- TASK #3
SELECT post, SUM(salary) AS sum_salary
FROM staff
GROUP BY post;

-- TASK #4
SELECT COUNT(id) AS amount_worker
FROM staff
WHERE post = 'Рабочий' AND age >= 24 AND age <= 49
GROUP BY post;

-- TASK #5
SELECT COUNT(DISTINCT post) AS amount_post
FROM staff;

-- TASK #6
SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) <= 30;





