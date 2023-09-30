SELECT
	last_name
	,SUM(
		(LENGTH(notes) - LENGTH(
			REPLACE(notes,'Dumbledore','')))/ LENGTH('Dumbledore'))
FROM
	wizard_deposits
WHERE
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name