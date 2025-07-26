-- Definição: Ranks em Window Functions para ordenação de dados referentes a uma coluna específica.


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
