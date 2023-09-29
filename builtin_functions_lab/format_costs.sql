SELECT
	title
	,ROUND(cost,3)AS modified_price
FROM books
ORDER BY "id"

--OR

SELECT
	title
	,CAST(cost AS NUMERIC(10,3)) AS modified_price
FROM books
ORDER BY "id"


--OR

SELECT
	title
	,TO_CHAR(cost, '999.999') AS modified_price
FROM books
ORDER BY "id"