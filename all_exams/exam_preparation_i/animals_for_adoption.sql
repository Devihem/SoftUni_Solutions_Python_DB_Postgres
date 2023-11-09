SELECT
    an.name AS animal
    ,TO_CHAR(an.birthdate,'YYYY') AS birth_year
    ,at.animal_type
FROM
    animals AS an
LEFT JOIN
        animal_types AS at ON an.animal_type_id = at.id

WHERE owner_id IS NULL
  AND AGE('01/01/2022', an.birthdate) <= INTERVAL'5 years'
  AND at.animal_type NOT LIKE 'Birds'

ORDER BY
    an."name"