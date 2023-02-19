USE dz2;
CREATE DATABASE IF NOT EXISTS dz2;
CREATE TABLE IF NOT EXISTS sales
(id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
count_product INT
);

INSERT INTO sales (`order_date`, `count_product`)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);
