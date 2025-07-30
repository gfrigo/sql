-- Definição: Criação de tabela e definição das colunas e seus tipos.

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS customer_feedback (
	-- feedback_id SERIAL PRIMARY KEY NOT NULL
	feedback_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	order_id INT REFERENCES orders(order_id),
	customer_id VARCHAR(5) REFERENCES customers(customer_id),
	feedback_date DATE NOT NULL,
	rating INT CONSTRAINT rating_range CHECK (rating BETWEEN 1 AND 5),
	submitted_at TIMESTAMP NOT NULL DEFAULT NOW()
);

/*
Criação de tabelas auxiliares para o repositório
*/

-- Criando tabela "transactions":
CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY NOT NULL,
    tipo CHAR(1) NOT NULL,
    descricao VARCHAR(10) NOT NULL,
    valor INTEGER NOT NULL,
    cliente_id INTEGER NOT NULL,
    realizada_em TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Criando tabela "clients":
CREATE TABLE IF NOT EXISTS clients (
    id SERIAL PRIMARY KEY NOT NULL,
    limite INTEGER NOT NULL,
    saldo INTEGER NOT NULL
);