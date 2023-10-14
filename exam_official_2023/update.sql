UPDATE coaches
SET salary = salary * coach_level
WHERE id in (SELECT
    id
FROM
    coaches AS co
JOIN
    players_coaches AS pc ON co.id = pc.coach_id
WHERE first_name LIKE 'C%' AND pc.player_id IS NOT NULL
GROUP BY id)