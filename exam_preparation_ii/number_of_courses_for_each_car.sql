SELECT
    cc."id" AS car_id
    ,cc.make
    ,cc.mileage
    ,COUNT(cr.id) AS count_of_courses
    ,ROUND(AVG(cr.bill),2) AS average_bill
FROM
    cars AS cc
LEFT JOIN courses AS cr ON cc.id = cr.car_id
GROUP BY cc."id", cc.make, cc.mileage
HAVING COUNT(cr.id) <> 2
ORDER BY count_of_courses DESC , cc.id
