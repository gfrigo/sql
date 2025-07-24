-- Definição: É utilizado para renomear (apelidos) colunas ou tabelas na 
-- exibição dos resultados ou para facilitar referências em outras partes do código.

-- Apelidos em colunas para exibição
SELECT unit_price AS preco_unitario FROM products;

-- Apelidos em cálculos
SELECT unit_price * quantity AS total_preco FROM order_details;

-- Apelidos em ORDER BY
SELECT product_name AS nome, unit_price AS preco FROM products
ORDER BY preco DESC;

-- Apelidos para tabelas (útil em JOINs ou consultas longas)
SELECT p.product_name, c.category_name
FROM products AS p
JOIN categories AS c ON p.category_id = c.category_id;