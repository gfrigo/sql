/*
Definição As CTEs (Common Table Expressions) são blocos temporários nomeados de
consulta que organizam e estruturam SQLs complexas.
*/

/*
Vantagens: 
1- Consultas legíveis e organizadas, dividindo lógica em partes distintas;
2- Podem ser referenciadas várias vezes na mesma consulta.

Quando usar: São úteis quando você precisa dividir uma consulta complexa em partes
gerenciáveis ou quando deseja reutilizar uma subconsulta várias vezes no mesmo
arquivo sql.
*/

WITH TotalRevenues AS (
    SELECT 
        c.company_name, 
        SUM(od.unit_price * od.quantity * (1.0 - od.discount)) AS total
    FROM customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
    INNER JOIN order_details od ON od.order_id = o.order_id
    GROUP BY c.company_name
)

-- Visualizar os dados obtidos pela CTE:
SELECT * FROM TotalRevenues;