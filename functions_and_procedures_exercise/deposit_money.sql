CREATE OR REPLACE PROCEDURE
    sp_deposit_money ( account_id INT, money_amount NUMERIC)
AS
$$
BEGIN
    UPDATE accounts AS ac
    SET balance = balance + money_amount
    WHERE ac."id" = account_id;
    COMMIT;
END
$$

LANGUAGE plpgsql;

CALL sp_deposit_money(1,200);

SELECT * FROM accounts