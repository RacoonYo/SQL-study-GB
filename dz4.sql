-- Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)
SELECT cats.name, shops.shopname
FROM cats
JOIN shops ON shops.id = cats.shops_id;

-- Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)
-- СПОСОБ 1
SELECT shops.shopname
FROM cats
JOIN shops ON shops.id = cats.shops_id
WHERE cats.name = 'Murzik';

-- СПОСОБ 2
SELECT shopname FROM shops
WHERE id IN 
	(SELECT cats.shops_id FROM cats
		WHERE cats.name = 'Murzik');
        
-- Вывести магазины, в котором НЕ продаются коты “Мурзик” и “Zuza”
SELECT shops.shopname
FROM cats
JOIN shops ON shops.id = cats.shops_id
WHERE shops.id NOT IN (
	SELECT shops_id FROM cats  
		WHERE cats.name = 'Murzik' OR cats.name = 'Zuza'); 
        
-- Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.
SELECT Analysis.an_name, Analysis.an_price
FROM Orders
JOIN Analysis ON ord_an = an_id
WHERE Orders.ord_datetime > "2020-02-05" AND Orders.ord_datetime < "2020-02-12"