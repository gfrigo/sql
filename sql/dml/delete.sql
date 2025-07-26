/*
Definição: Faz a deleção de uma ou mais linhas de dados mediante filtro com WHERE.

IMPORTANTE: A execução do DELETE sem WHERE, excluirá TODOS os dados da tabela.
*/

DELETE FROM customer_feedback
WHERE rating = 1;