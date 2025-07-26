/*
Definição: Funções de janela que utilizam dados anteriores ou posteriores dentro
de uma partição definida, útil  para análises de comparação.
*/

/*
LAG: Permite acessar o valor da linha anterior; 
LEAD: Permite acessar o valor da próxima linha.
*/
SELECT 
  o.customer_id, 
  TO_CHAR(o.order_date, 'YYYY-MM-DD') AS order_date, 
  s.company_name AS shipper_name, 
  LAG(o.freight) OVER (PARTITION BY o.customer_id ORDER BY o.order_date DESC) AS previous_order_freight, 
  o.freight AS order_freight, 
  LEAD(o.freight) OVER (PARTITION BY o.customer_id ORDER BY o.order_date DESC) AS next_order_freight
FROM 
  orders o
JOIN 
  shippers s ON s.shipper_id = o.ship_via;