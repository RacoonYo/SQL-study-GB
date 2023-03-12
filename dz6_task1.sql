-- Задача 1
-- Создайте функцию, которая принимает кол-во сек и форматирует их
-- в кол-во дней, часов, минут и секунд
-- 123456->1 день 10 часов 17 минут 36 секунд

DELIMITER $$
CREATE FUNCTION sec_format (sec INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE days INT;
	DECLARE hours INT;
	DECLARE mins INT;
	DECLARE secnds INT;
	DECLARE rem INT;
    
    SET days = sec DIV (60*60*24);
    SET rem = sec MOD (60*60*24);
    SET hours = rem DIV (60*60);
    SET rem = rem MOD (60*60);
    SET mins = rem DIV 60;
    SET rem = rem MOD (60);
    SET secnds = rem;
    
	RETURN concat(days, " дней ", hours, " часов ", mins, " минут ", secnds, " секунд");
    END $$
DELIMITER ;