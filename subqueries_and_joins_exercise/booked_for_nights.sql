SELECT
	CONCAT(address, ' ' , address_2) AS apartment_address
	,booked_for as nights

FROM
	apartments AS a
JOIN
	bookings AS b
ON
	a.booking_id = b.booking_id
ORDER BY
	a.apartment_id