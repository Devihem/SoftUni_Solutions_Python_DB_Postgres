CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(searched_volunteers_department VARCHAR(30))
RETURNS INT
AS
    $$
        DECLARE counter INT;
        BEGIN
            SELECT COUNT(vv.name)
            FROM volunteers_departments AS vd
            JOIN volunteers AS vv ON vd.id = vv.department_id
            WHERE vd.department_name = searched_volunteers_department
            INTO counter;

            RETURN counter;
        END;
    $$

LANGUAGE plpgsql;


SELECT fn_get_volunteers_count_from_department('Education program assistant');

