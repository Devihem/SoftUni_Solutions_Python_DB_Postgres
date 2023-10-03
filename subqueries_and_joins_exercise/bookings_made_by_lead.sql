
SELECT
	b.apartment_id
	,b.booked_for
	,c.first_name
	,c.country
FROM
	bookings AS b
INNER JOIN
	customers AS c
USING
	(customer_id)
INNER JOIN
	apartments AS a
USING
	(booking_id)
WHERE
	c.job_type LIKE 'Lead%'