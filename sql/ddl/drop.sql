/*
Definição: Remoção de colunas ou tabelas
*/

-- Removendo uma coluna
ALTER TABLE customer_feedback
DROP COLUMN submitted_at;

-- Removendo uma tabela
DROP TABLE customer_feedback;