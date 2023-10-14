CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(
    IN animal_name VARCHAR(30),
    OUT owner_name VARCHAR(100)
)
AS
    $$
        BEGIN
            SELECT COALESCE(ow.name,'For adoption')
            FROM animals AS an
            LEFT JOIN owners AS ow ON an.owner_id = ow.id
            WHERE animal_name = an.name
            INTO owner_name;
            RETURN;
        END;
    $$
LANGUAGE plpgsql;