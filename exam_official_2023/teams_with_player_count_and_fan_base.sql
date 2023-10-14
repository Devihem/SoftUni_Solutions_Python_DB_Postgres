SELECT tm.id
     , tm.name
     , COUNT(pl.id) AS player_count
     , tm.fan_base
FROM teams AS tm
LEFT JOIN players AS pl ON tm.id = pl.team_id
WHERE tm.fan_base > 30000
GROUP BY tm.id, tm.name, tm.fan_base
ORDER BY player_count DESC , fan_base DESC