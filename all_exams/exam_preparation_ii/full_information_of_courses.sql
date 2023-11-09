SELECT
    ad.name
    ,CASE
        WHEN EXTRACT(HOUR FROM cr.start) BETWEEN 6 AND 20 THEN 'Day'
		    ELSE 'Night'
    END AS dasys
    ,cr.bill
    ,cl.full_name
    ,cc.make
    ,cc.model
    ,ct.name AS "category name"
FROM
    courses AS cr
LEFT JOIN addresses AS ad ON cr.from_address_id = ad.id
LEFT JOIN clients AS cl ON cl.id = cr.client_id
LEFT JOIN cars AS cc ON cc.id = cr.car_id
LEFT JOIN categories AS ct ON cc.category_id = ct.id