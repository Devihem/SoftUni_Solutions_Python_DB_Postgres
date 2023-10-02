WITH avg_salaries AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT COUNT(*)
FROM employees
JOIN avg_salaries ON salary > avg_salary;
