SELECT
    an.name
    ,at.animal_type
    ,to_char(an.birthdate,'DD.MM.YYYY') as birthdate
FROM
    animals AS an
JOIN
    animal_types AS at ON an.animal_type_id = at.id
ORDER BY
    an.name ASC