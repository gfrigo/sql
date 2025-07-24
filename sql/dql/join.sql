/*
Definição: Joins são fundamentais para combinar registros de duas ou mais 
tabelas em um banco de dados com base em uma condição comum.
Essa técnica permite que dados relacionados, que são armazenados em tabelas 
separadas, sejam consultados juntos de forma eficiente e coerente.
*/

/*
INNER JOIN: Apenas os registros que estejam presentes em ambas as tabelas
por meio da chave estrangeira/primária.
*/
SELECT * FROM orders o
INNER JOIN customers c ON c.customer_id = o.customer_id
WHERE DATE_PART('YEAR', o.order_date) = 1996;

/*
LEFT JOIN: Mantém todos os registros da tabela da esquerda, adicionados
com os registros da tabela da direita que sejam presentes em ambas as tabelas
por meio da chave.
*/
SELECT e.city AS cidade, 
       COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios, 
       COUNT(DISTINCT c.customer_id) AS numero_de_clientes
FROM employees e 
LEFT JOIN customers c ON e.city = c.city
GROUP BY e.city
ORDER BY cidade;

/*
RIGHT JOIN: Mantém todos os registros da tabela da direita, adicionados
com os registros da tabela da esquerda que sejam presentes em ambas as tabelas
por meio da chave.
*/
SELECT c.city AS cidade, 
       COUNT(DISTINCT c.customer_id) AS numero_de_clientes, 
       COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios
FROM employees e 
RIGHT JOIN customers c ON e.city = c.city
GROUP BY c.city
ORDER BY cidade;

/*
FULL JOIN: Mantém todos os dados, da tabela à esquerda e à direita.
*/
SELECT
	COALESCE(e.city, c.city) AS cidade,
	COUNT(DISTINCT e.employee_id) AS numero_de_funcionarios,
	COUNT(DISTINCT c.customer_id) AS numero_de_clientes
FROM employees e 
FULL JOIN customers c ON e.city = c.city
GROUP BY e.city, c.city
ORDER BY cidade;