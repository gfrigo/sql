-- Definição: Função de análise que retornam uma única linha com um valor
-- calculado a partir de uma coluna.

-- Retorna o menor valor da coluna 'unit_price'
SELECT MIN(unit_price) FROM products;

-- Retorna o maior valor da coluna 'unit_price'
SELECT MAX(unit_price) FROM products;

-- Retorna o total de registros (linhas) da tabela
SELECT COUNT(*) FROM products;

-- Retorna a média dos valores da coluna
SELECT AVG(unit_price) FROM products;

-- Retorna a soma dos valores da coluna
SELECT SUM(unit_price) FROM products;