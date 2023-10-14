SELECT
    CONCAT(co.first_name, ' ', co.last_name) AS coach_full_name
    ,CONCAT(pl.first_name, ' ', pl.last_name) AS player_full_name
    ,tm.name AS team_name
    ,sd.passing
    ,sd.shooting
    ,sd.speed
FROM
    coaches AS co
JOIN
    players_coaches AS pc ON co.id = pc.coach_id
JOIN
    players AS pl ON pc.player_id = pl.id
JOIN
        teams AS tm ON tm.id = pl.team_id
JOIN
    skills_data AS sd ON sd.id = pl.skills_data_id
ORDER BY
    coach_full_name ASC , player_full_name DESC