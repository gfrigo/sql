/*
Definição: Antigas "snapshots" armazenam fisicamente o resultado de uma query
como uma “foto” dos dados em um ponto no tempo, permitindo consultas rápidas e
atualização periódica.
*/


/*
Vantagens:
1- Permite armazenar fisicamente os resultados de uma consulta, melhorando
significativamente o desempenho em outras consultas;

2- Reduz carga no banco de dados, já que os resultados são pré-calculados e
armazenados.

Desvantagens:
1- Precisa ser atualizada.

Quando usar: Use uma materialized view quando precisa melhorar a performance de
consultas pesadas e os dados não precisam estar sempre atualizados em tempo real.
Ela é útil para pré-processar e armazenar resultados, como em relatórios ou
agregações grandes.
*/

CREATE MATERIALIZED VIEW MaterializedTotalRevenues AS
SELECT 
    c.company_name, 
    SUM(od.unit_price * od.quantity * (1.0 - od.discount)) AS total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_details od ON od.order_id = o.order_id
GROUP BY c.company_name;

-- Visualizar os dados da consulta salvos fisicamente no banco de dados:
SELECT * FROM MaterializedTotalRevenues;