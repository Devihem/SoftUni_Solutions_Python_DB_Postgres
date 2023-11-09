SELECT
    dr.first_name
    ,dr.last_name
    ,cr.make
    ,cr.model
    ,cr.mileage
FROM
    cars AS cr
JOIN cars_drivers AS cd ON cr.id = cd.car_id
JOIN drivers AS dr ON dr.id = cd.driver_id
WHERE cr.mileage IS NOT NULL
ORDER BY
    mileage DESC ,dr.first_name
