/*
Definição: Ranks em Window Functions para ordenação de dados referentes a uma 
coluna específica.
*/ 
-- ROW_NUMBER: Numera cada linha de forma única, mesmo se os valores forem iguais.
-- RANK: Atribui o mesmo número para empates, mas pula as posições seguintes.
-- DENSE_RANK: Atribui o mesmo número para empates, mas não pula posições seguintes.
SELECT  
  o.order_id, 
  p.product_name, 
  (o.unit_price * o.quantity) AS total_sale,
  ROW_NUMBER() OVER (ORDER BY (o.unit_price * o.quantity) DESC) AS order_rn, 
  RANK() OVER (ORDER BY (o.unit_price * o.quantity) DESC) AS order_rank, 
  DENSE_RANK() OVER (ORDER BY (o.unit_price * o.quantity) DESC) AS order_dense
FROM  
  order_details o
JOIN 
  products p ON p.product_id = o.product_id;

/*
PERCENT_RANK: Mede em qual posição percentual a linha está dentro a linha está
dentro do grupo (PARTITION BY) variando entre 0 e 1 (sem considerar a primeira 
linha como 0.5).

CUME_DIST: Mede a proporção acumulada de linhas por grupo (PARTITION BY)  com 
valor menor ou igual ao da atual.
*/
SELECT  
  order_id, 
  unit_price * quantity AS total_sale,
  ROUND(CAST(PERCENT_RANK() OVER (PARTITION BY order_id 
    ORDER BY (unit_price * quantity) ASC) AS numeric), 2) AS order_percent_rank,
  ROUND(CAST(CUME_DIST() OVER (PARTITION BY order_id 
    ORDER BY (unit_price * quantity) ASC) AS numeric), 2) AS order_cume_dist
FROM  
  order_details;


/*
NTILE: Divide as linhas em um número definido de grupos (n), atribuindo a cada 
linha um número de grupo sequencial (ordenação).
*/
SELECT first_name, last_name, title,
   NTILE(3) OVER (ORDER BY first_name) AS group_number
FROM employees;