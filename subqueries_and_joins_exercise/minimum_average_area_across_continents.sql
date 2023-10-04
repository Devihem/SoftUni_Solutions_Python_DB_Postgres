SELECT
    MIN(avg_data) as min_average_area

FROM
    (SELECT
	AVG(area_in_sq_km) AS avg_data
FROM
	countries
GROUP BY
	continent_code) AS "table_name"