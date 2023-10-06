DROP FUNCTION IF EXISTS fn_calculate_future_value;

CREATE OR REPLACE FUNCTION fn_calculate_future_value(
initial_sum DECIMAL
,yearly_interest_rate DECIMAL
,number_of_years INT)

RETURNS DECIMAL AS
$$
    DECLARE
        full_sum DECIMAL;
    BEGIN
        SELECT
            TRUNC((initial_sum * (1 + yearly_interest_rate) ^ number_of_years),4) INTO full_sum;
    RETURN full_sum;
    END;
$$
LANGUAGE plpgsql;


SELECT fn_calculate_future_value(500, 0.25, 10)
