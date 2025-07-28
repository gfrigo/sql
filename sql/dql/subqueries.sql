/*
Definição: São consultas aninhadas dentro de outra query, utilizadas para filtrar,
calcular ou gerar dados intermediários.
*/

/*
Vantagens:
1- Podem ser aninhadas dentro de outras subqueries ou consultas principais para
gerar dados intermediários a partir de tabeals existentes sem que haja a necessidade
de criar novas tabelas.

Desvantagens:
1- Torna consultas complexas difíceis de manter e entender caso haja grande volume
de aninhamento entre subqueries.

Quando usar: São úteis quando você precisa de resultados intermediários para
filtrar ou agregar dados em uma consulta principal desde que não haja
aninhamento excessivo, assim como no exemplo abaixo:
*/

-- Aqui se faz necessário uma refatoração com uso de CTEs.
SELECT product_id FROM (
SELECT product_id 
FROM (
	SELECT product_id, rank
	FROM (SELECT 
			product_id,
			SUM( det.quantity * det.unit_price * ( 1 - det.discount )) sold_value,
			RANK() OVER (ORDER BY SUM( det.quantity * det.unit_price * ( 1 - det.discount )) DESC) rank -- WINDOWS FUNCTION
		FROM order_details det
		GROUP BY det.product_id
		ORDER BY rank)
	WHERE rank <= 5 )
WHERE product_id BETWEEN 35 and 65 )
ORDER BY product_id DESC