/*
Definição: São rotinas (agendadas ou não) armazenadas no banco de dados que
contêm uma série de instruções SQL e podem ser executadas por aplicativos ou
usuários conectados ao banco de dados. 
*/

/*
Vantagens:
1- Reutilização de código;

2- Por serem compiladas e armazenadas possuem desempenho maior;

3-  Protege o banco de dados, pois os aplicativos só precisam de permissão para
execução, não para acessar diretamente as tabelas e modificar dados sensíveis;

4- Oculta complexidade de procedimentos e oferece interface simplificada para usuários.
*/

-- Criando procedure "transfer" para garantir integridade dos dados antes da inserção:
CREATE OR REPLACE PROCEDURE transfer(
    IN p_tipo CHAR(1),
    IN p_descricao VARCHAR(10),
    IN p_valor INTEGER,
    IN p_cliente_id INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
	saldo_atual INTEGER;
	limite_cliente INTEGER;
BEGIN
	SELECT saldo, limite INTO saldo_atual, limite_cliente
	FROM clients
	WHERE id = p_cliente_id;

	IF p_tipo = 'd' AND saldo_atual - p_valor < -limite_cliente THEN
	    RAISE EXCEPTION 'Saldo insuficiente para realizar a transação';
	END IF;

	UPDATE clients
	SET saldo = saldo + CASE WHEN p_tipo = 'd' THEN -p_valor ELSE p_valor END
	WHERE id = p_cliente_id;

	INSERT INTO transactions (tipo, descricao, valor, cliente_id)
	VALUES (p_tipo, p_descricao, p_valor, p_cliente_id);
END
$$

-- Chamando a procedure "transfer" e passando valores de entrada:
CALL transfer('d', 'carro', 80000, 1);