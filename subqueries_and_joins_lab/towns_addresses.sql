SELECT
	t.town_id
	,t.name
	,a.address_text
FROM
	addresses AS a
JOIN
	towns AS "t"
ON
	t.town_id = a.town_id
WHERE
	"name" IN ('Sofia','San Francisco','Carnation')
ORDER BY
	t.town_id , a.address_id
