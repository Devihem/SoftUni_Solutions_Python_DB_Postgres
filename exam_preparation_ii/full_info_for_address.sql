CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    address_name VARCHAR(50),
    full_name VARCHAR(100),
    level_of_bill VARCHAR(20),
    make VARCHAR(30),
    condition CHAR(1),
    category_name VARCHAR(50)
);

CREATE OR REPLACE PROCEDURE sp_courses_by_address(
                            IN address_name VARCHAR(100))
AS
    $$
        BEGIN
            TRUNCATE search_results;
            INSERT INTO search_results(
                        address_name
                        ,full_name
                        ,level_of_bill
                        ,make
                        ,condition
                        ,category_name )
            SELECT
                ad.name
                ,cl.full_name
                ,CASE
                    WHEN cr.bill <= 20 THEN 'Low'
                    WHEN cr.bill <= 30 THEN 'Medium'
                    ELSE 'High'
                END
                ,cc.make
                ,cc.condition
                ,ct.name

            FROM addresses AS ad
            JOIN courses AS cr ON ad.id = cr.from_address_id
            JOIN cars AS cc ON cc.id = cr.car_id
            JOIN categories AS ct ON ct.id = cc.category_id
            JOIN clients AS cl ON cl.id = cr.client_id
            WHERE ad.name = address_name
            ORDER BY cc.make ASC , cl.full_name ASC;
        END;

    $$
LANGUAGE plpgsql;
