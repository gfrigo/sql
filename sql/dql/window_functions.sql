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

/*
Vantagens em usar Window Functions
1- Preservação de Dados Detalhados: Ao contrário do GROUP BY, que agrega e reduz os
dados a uma única linha por grupo, as funções de janela mantêm cada linha individual
do conjunto de dados original visível. Isso é útil para análises detalhadas onde
 você precisa ver tanto os valores agregados quanto os dados de linha individual.

2- Flexibilidade: Você pode calcular múltiplas métricas de agregação em diferentes
partições dentro da mesma consulta sem múltiplas passagens pelos dados ou subconsultas complexas.
*/