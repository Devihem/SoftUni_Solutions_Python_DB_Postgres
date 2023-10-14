SELECT
    CONCAT(ow."name" , ' - ', an."name") AS "Owners - Animals"
    ,ow.phone_number AS "Phone Number"
    ,ac."cage_id" AS "Cage ID"
FROM
    animals AS an
LEFT JOIN owners AS ow ON an.owner_id = ow.id
LEFT JOIN animal_types AS at ON an.animal_type_id = at.id
LEFT JOIN animals_cages AS ac ON ac.animal_id = an."id"
WHERE at.animal_type = 'Mammals' AND ow.phone_number IS NOT NULL

ORDER BY
    ow."name" ASC, an."name" DESC
;
