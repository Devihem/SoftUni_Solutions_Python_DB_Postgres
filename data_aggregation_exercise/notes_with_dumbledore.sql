SELECT
	last_name
	,COUNT(notes) as "Note with Dumbledore"
FROM
	wizard_deposits
WHERE
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name