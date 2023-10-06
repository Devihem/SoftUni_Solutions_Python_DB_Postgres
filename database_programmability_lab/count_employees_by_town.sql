DROP FUNCTION IF EXISTS fn_count_employees_by_town;
CREATE FUNCTION fn_count_employees_by_town(town_name_input VARCHAR(20))
RETURNS INT AS

$$
	DECLARE
		count_people INT;
	BEGIN
		SELECT COUNT(*) INTO count_people
		FROM employees  AS em
		LEFT JOIN addresses AS ad ON ad.address_id = em.address_id
		LEFT JOIN towns AS tw ON tw.town_id = ad.town_id
		WHERE town_name_input = tw."name";
		RETURN count_people;
	END;
	
$$
LANGUAGE plpgsql;

select fn_count_employees_by_town('Sofia') AS count