SELECT
    pp.id
    ,CONCAT(pp.first_name, ' ', pp.last_name) AS "full_name"
    ,pp.age
    ,pp.position
    ,pp.salary
    ,sd.pace
    ,sd.shooting
FROM
    players AS pp
LEFT JOIN skills_data AS sd ON pp.skills_data_id = sd.id

WHERE position = 'A' AND team_id IS NULL AND (pace + shooting) > 130

