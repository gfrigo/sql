/*
Definição: Agrupamento de várias linhas, por meio de um único valor agregado 
(calculado) que representa uma determina coluna/chave pertencente.
*/

-- Colunas sem Aggregate Functions obrigatoriamente devem estar no GROUP BY.
SELECT order_id,
	     COUNT(order_id) AS unique_product,
	     SUM(quantity) AS total_quantity,
       SUM(unit_price * quantity) AS total_price
FROM order_details
GROUP BY order_id
ORDER BY order_id ASC;