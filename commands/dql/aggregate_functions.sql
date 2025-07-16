-- Aggregate FUNCTIONS
SELECT MIN(unit_price) FROM products;

SELECT MAX(unit_price) FROM products;

SELECT COUNT(*) FROM products;

SELECT AVG(units_in_stock) FROM products;

SELECT SUM(quantity) FROM order_details;