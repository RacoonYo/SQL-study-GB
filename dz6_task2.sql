-- Задача 2
-- Выведите только четные числа от 1 до 10 включительно,
-- (через функцию/процедуру)

DELIMITER $$
CREATE PROCEDURE even_num ()
BEGIN
	DECLARE i INT DEFAULT 10;
	DECLARE result VARCHAR(50) DEFAULT '';
    WHILE i > 0 DO
		IF i MOD 2 = 0 THEN
			SET result = concat(i, ' ', result);
		END IF;
	SET i = i - 1;
	END WHILE;  
    SELECT result;
END $$
DELIMITER ;

CALL even_num();