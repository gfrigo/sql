/*
Definição: Temporary tables são tabelas temporárias usadas para armazenar dados
durante a sessão, facilitando processos intermediários sem impactar o banco
permanentemente.
*/

/*
Vantagens:
1- Armazenar resultados intermediários de uma consulta complexa para reutilização
posterior;

2- Podem ser indexadas para melhorar o desempenho em consultas subsequentes.

Desvantagens:
1- Consomem recursos do banco de dados;

2- Exigem gerenciamento explícito para limpar os dados após o uso.
*/

CREATE TEMP TABLE TempTotalRevenues AS
SELECT 
    c.company_name, 
    SUM(od.unit_price * od.quantity * (1.0 - od.discount)) AS total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_details od ON od.order_id = o.order_id
GROUP BY c.company_name;

-- Visualizar os dados armazenados na TEMP TABLE:
SELECT * FROM TempTotalRevenues;