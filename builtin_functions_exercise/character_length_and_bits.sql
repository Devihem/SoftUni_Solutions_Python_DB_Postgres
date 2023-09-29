SELECT
	CONCAT(m.mountain_range,' ', p.peak_name)
	AS "Mountain Information"

	,LENGTH(CONCAT(m.mountain_range,' ', p.peak_name)) AS "Charecters Length"
	,BIT_LENGTH(CONCAT(m.mountain_range,' ', p.peak_name)) AS "Bits of a String"
FROM
	mountains AS "m"
	,peaks AS "p"

WHERE
	m.id = p.mountain_id