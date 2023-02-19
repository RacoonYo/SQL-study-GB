SELECT `id`, 
	IF (
		count_product < 100, 'Маленький заказ', 
			IF (count_product > 300, 'Большой заказ', 'Средний заказ')
		) AS 'Тип заказа'
FROM sales;