CREATE OR REPLACE FUNCTION fn_courses_by_client("phone_num" VARCHAR(20))
RETURNS INT
AS

    $$  DECLARE counted INT;
        BEGIN
            SELECT
                COUNT(cr.id)
                FROM
                    clients AS cl
                JOIN courses AS cr ON cl.id = cr.client_id
                WHERE cl.phone_number = phone_num
                INTO counted ;
                RETURN counted;
        END;
    $$

LANGUAGE plpgsql;