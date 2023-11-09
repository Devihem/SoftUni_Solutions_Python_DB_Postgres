SELECT
    vv."name" AS volunteers
    ,vv.phone_number
    ,TRIM(REPLACE(REPLACE(vv.address,'Sofia',''),',',''))
FROM
    volunteers AS vv
LEFT JOIN
    volunteers_departments AS vd ON vv.department_id = vd.id
WHERE department_name = 'Education program assistant' AND vv.address LIKE '%Sofia%'

ORDER BY vv."name" ASC