-- Definição: Filtragem de dados.

-- Obtém os dados NÃO NULOS de uma coluna.
SELECT * FROM customers
WHERE region IS NOT NULL;

-- Obtém os dados NULOS de uma coluna.
SELECT * FROM customers
WHERE region IS NULL;