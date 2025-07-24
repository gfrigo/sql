/*
Definição: A cláusula HAVING filtra os grupos retornados por GROUP BY 
com base em condições sobre agregações.


WHERE vs HAVING
WHERE: Antes do GROUP BY, filtra linhas e não usa funções de agregação.
HAVING: Depois do GROUP BY, filtra grupos, usa funções de agregações.
*/

-- Limita os dados retornados por um GROUP BY
SELECT o.product_id, p.product_name, SUM(o.quantity) AS quantidade_total
FROM order_details o
JOIN products p ON p.product_id = o.product_id
GROUP BY o.product_id, p.product_name
HAVING SUM(o.quantity) < 200
ORDER BY quantidade_total DESC;