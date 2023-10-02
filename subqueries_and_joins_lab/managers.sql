SELECT
	employee_id
	,CONCAT(first_name, ' ', last_name) AS full_name
	,department_id
	,' ' AS department_name

FROM employees

ORDER BY
	employee_id
LIMIT 5