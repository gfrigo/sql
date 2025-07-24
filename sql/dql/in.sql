-- Definição: Filtragem de dados em um determinado intervalo de valores
-- Obs: Evita usar diversos operadores lógicos ao mesmo tempo. 

-- Obtém dados que NÃO ESTÃO dentro de um conjunto.
SELECT * FROM customers
WHERE city NOT IN ('Paris', 'Rio de Janeiro', 'Sao Paulo', 'London');

-- Obtém dados que ESTÃO dentro de um conjunto.
SELECT * FROM customers
WHERE city IN ('Paris', 'Rio de Janeiro', 'Sao Paulo', 'London');