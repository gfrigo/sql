-- BETWEEN e NOT BETWEEN
SELECT * FROM products
WHERE product_name BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY product_name;

SELECT * FROM orders
WHERE order_date BETWEEN '07/04/1996' AND '07/09/1996';