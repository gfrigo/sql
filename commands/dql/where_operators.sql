-- WHERE + OPERATORS
SELECT country FROM customers
WHERE country='Mexico';

SELECT city FROM customers
WHERE city='Rio de Janeiro' OR city='Sao Paulo';

SELECT country, city, contact_title FROM customers
WHERE country='Brazil' AND city='Sao Paulo' AND contact_title='Marketing Assistant';

SELECT country, city FROM customers
WHERE country='Germany' AND (city='Berlin' OR city='Aachen');

SELECT city FROM customers
WHERE city<>'Paris';

SELECT product_name, unit_price FROM products
WHERE  unit_price > 100;

SELECT product_name, unit_price FROM products
WHERE unit_price < 10;

SELECT product_name, unit_price FROM products
WHERE unit_price >= 50 AND unit_price <= 100;
