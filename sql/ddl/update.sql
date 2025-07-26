/*
Definição: Atualiza uma linha de dados em colunas específicas mediante filtro
com WHERE.

IMPORTANTE: A execução do update sem WHERER, atribuirá o valor em TODAS as linhas.
*/

UPDATE customer_feedback
SET feedback_date = '2025-07-26',
    rating = 1
WHERE customer_id = 'ALFKI' AND order_id = 10248;