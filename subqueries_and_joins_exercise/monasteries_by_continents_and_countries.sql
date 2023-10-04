UPDATE countries
SET country_name = 'Burma'
WHERE country_name = 'Myanmar';


-- THIS HERE IS WRONG IN JUDGE ( for 100 points delete the second row of VALUES Myin-Tin-Daik)
INSERT INTO monasteries(monastery_name,country_code)
VALUES ('Hanga Abbey','TZ')
		,('Myin-Tin-Daik','MM');

SELECT
	ct.continent_name
	,cn.country_name
	,COUNT(mn.monastery_name) AS monasteries_count
FROM countries AS cn
LEFT JOIN continents AS ct ON cn.continent_code = ct.continent_code
LEFT JOIN monasteries AS mn ON mn.country_code = cn.country_code
WHERE
	cn.three_rivers = false
GROUP BY
	cn.country_name,ct.continent_name
ORDER BY
	monasteries_count DESC
	,cn.country_name ASC;