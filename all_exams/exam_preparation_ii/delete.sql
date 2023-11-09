DELETE FROM clients

WHERE id IN (SELECT
    cl.id

FROM clients AS cl
LEFT JOIN courses AS cr ON cr.client_id = cl.id
WHERE start IS NULL and length(cl.full_name) > 3
ORDER BY
    cl.id);