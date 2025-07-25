/*
Definição: Ordenar valores de uma coluna, resultantes de uma query, em
ordem crescente ou decrescente.
*/

-- Números em ordem decrescente (do maior para o menor).
SELECT * FROM order_details
ORDER BY unit_price DESC;

-- Números em ordem crescente (do menor para o maior).
SELECT * FROM order_details
ORDER BY unit_price ASC;

-- Ordenar datas
SELECT * FROM orders
ORDER BY order_date ASC;

-- Textos em ordem alfabética
SELECT * FROM orders
ORDER BY customer_id DESC;