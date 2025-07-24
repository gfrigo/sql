-- Definição: Obtém dados do armazenamento para visualização

-- Visualizar TODAS (*) as colunas da tabela order
SELECT * FROM orders;

-- Visualizar colunas ESPECÍFICAS da tabela orders
SELECT ship_name, ship_address FROM orders;

-- Visualizar uma determinada coluna com valores únicos
SELECT DISTINCT customer_id FROM orders;

-- Limitar visualização a um determinado número de linhas
SELECT * FROM orders
ORDER BY order_date ASC
LIMIT 5;