SELECT
    cc.full_name
    ,COUNT(cr.id) as count_of_cars
    ,SUM(cr.bill)
FROM
    clients AS cc
JOIN
    courses AS cr ON cc.id = cr.client_id
WHERE full_name LIKE '_a%'
GROUP BY
    full_name
HAVING COUNT(cr.id) > 1
ORDER BY
    cc.full_name