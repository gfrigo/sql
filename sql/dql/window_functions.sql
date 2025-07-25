/*
Definição: Mantém todas as linhas da tabela e aplicam cálculos de agregação sobre 
grupos definidos pela cláusula PARTITION BY, repetindo os resultados em cada linha
do grupo para análise detalhada.

DIFERENÇAS:
- GROUP BY: Reduz os dados a uma linha por grupo (resumo).
- WINDOW FUNCTIONS: Mantém todas as linhas e exibe os resultados agregados por grupo (detalhado).
*/

-- Coluna order_id irá se repetir (comparar com group_by.sql)
SELECT order_id,
   COUNT(order_id) OVER (PARTITION BY order_id) AS unique_product,
   SUM(quantity) OVER (PARTITION BY order_id) AS total_quantity,
   SUM(unit_price * quantity) OVER (PARTITION BY order_id) AS total_price
FROM order_details
ORDER BY order_id ASC;