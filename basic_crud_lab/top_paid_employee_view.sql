CREATE VIEW top1 AS
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT * FROM top1