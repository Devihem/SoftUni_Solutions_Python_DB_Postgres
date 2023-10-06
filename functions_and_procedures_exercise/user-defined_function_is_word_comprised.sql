DROP FUNCTION IF EXISTS fn_is_word_comprised;

CREATE OR REPLACE FUNCTION fn_is_word_comprised(
                                                set_of_letters VARCHAR(50)
                                                ,"word" VARCHAR(50))

RETURNS BOOLEAN AS
$$
    DECLARE
        word_len INT := LENGTH("word");
        current_char VARCHAR(8):= Null;
        pointer_pos INT := 0;


    BEGIN
        WHILE pointer_pos < word_len LOOP
            pointer_pos :=  pointer_pos + 1;
            current_char := SUBSTRING("word" FROM pointer_pos FOR 1);
            IF POSITION(LOWER(current_char) IN LOWER(set_of_letters)) = 0 THEN RETURN FALSE;
            END IF;
        END LOOP;
        RETURN TRUE;
    END;
$$
LANGUAGE plpgsql;


SELECT fn_is_word_comprised('R@o!B$B', 'Bob')