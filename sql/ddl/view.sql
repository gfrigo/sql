/*
Definição: São consultas salvas que se comportam como tabelas virtuais, permitindo
reutilização e simplificação de SQLs complexas.
*/

/*
Vantagens:
1- Permite abstrair a lógica de consulta complexa em um objeto de banco de dados
reutilizável por qualquer arquivo de consulta que tenha permissão de visualização;

2- Facilita segurança, ou seja, você permite acesso à  visualização da view em 
vez de acesso às tabelas reais no banco de dados, evitando modificações inesperadas
em dados sensíveis.

Desvantagens:
1- Não armazenam dados fisicamente, então precisam ser reavaliadas sempre que são
consultadas. Desta forma, pode impactar o desempenho;

2- Se a view depende de outras views ou tabelas a complexidade aumenta e o pode
comprometer o desempenho.

Quando usar: São úteis quando você precisa reutilizar uma consulta várias vezes
em qualquer arquivo de consulta, simplificar consultas complexas e proteger o
banco de ações inesperadas.
*/

CREATE VIEW TotalRevenues AS
SELECT 
    c.company_name, 
    SUM(od.unit_price * od.quantity * (1.0 - od.discount)) AS total
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_details od ON od.order_id = o.order_id
GROUP BY c.company_name;

-- Visualizar os dados da consulta salva na view:
SELECT * FROM TotalRevenues;