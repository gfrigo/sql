-- Definição: Filtragem de dados em um determinado intervalo
-- Obs: Evita usar diversos operadores lógicos ao mesmo tempo. 

-- Obtém dados que estejam alfabeticamente ENTRE 'C' e 'M'.
WHERE product_name BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY product_name;

-- Obtém dados que estejam ENTRE as datas.
SELECT * FROM orders
WHERE order_date BETWEEN '07/04/1996' AND '07/09/1996';

-- Obtém dados que estejam ENTRE os valores inteiros.
SELECT * FROM order_details
WHERE unit_price BETWEEN 10 and 20;