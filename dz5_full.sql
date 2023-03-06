-- Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов

CREATE VIEW up_to_25000 AS
SELECT name FROM cars
WHERE cost < 25000;


-- Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)

ALTER VIEW up_to_25000 AS
SELECT name FROM cars
WHERE cost < 30000;


-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

CREATE VIEW skoda_audi AS
SELECT * FROM cars
WHERE name = 'Skoda' OR name = 'Audi';


-- Добавьте новый столбец под названием «время до следующей станции». Чтобы получить это значение, мы вычитаем время станций для пар смежных станций. 

SELECT id, station_time, station, 
(TIMEDIFF(LEAD(station_time) OVER(PARTITION BY id), station_time )) AS time_to_next_st
FROM train


