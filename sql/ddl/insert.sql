/*
Definição: O comando INSERT INTO é usado para adicionar novos registros a uma
tabela existente.
*/

-- Os valores inseridos na cláusula VALUES devem estar na mesma ordem das colunas.
INSERT INTO customer_feedback (order_id, customer_id, feedback_date, rating)
VALUES (10248, 'ALFKI', '2025-07-25', 5);

INSERT INTO customer_feedback (order_id, customer_id, feedback_date, rating)
VALUES (10249, 'ANATR', '2025-07-24', 4);

INSERT INTO customer_feedback (order_id, customer_id, feedback_date, rating)
VALUES (10250, 'ANTON', '2025-07-23', 3);