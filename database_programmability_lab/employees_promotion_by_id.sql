CREATE PROCEDURE sp_increase_salary_by_id("id" INTEGER) AS
	$$
		BEGIN
			UPDATE employees
			SET salary = salary * 1.05
			WHERE "id" = employee_id;
		END;
	$$
LANGUAGE plpgsql;