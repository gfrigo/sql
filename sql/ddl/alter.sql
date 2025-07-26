/*
Definição: Adiciona ou Remove colunas à tabelas existentes
*/

-- Remover restrições (CONSTRAINTS)
ALTER TABLE customer_feedback
DROP CONSTRAINT rating_range;

-- Adiciona uma nova coluna
ALTER TABLE customer_feedback
ADD COLUMN comment TEXT;

-- Remove uma coluna
ALTER TABLE customer_feedback
DROP COLUMN comment;

-- Renomeia colunas
ALTER TABLE customer_feedback
RENAME COLUMN submitted_at TO created_at

-- Renomeia a tabela
ALTER TABLE customer_feedback
RENAME TO customer_reviews;