-- Definição: Acompanha o WHERE para filtragem de dados.

----------------------
-- Operadores Lógicos:
----------------------

/* 
AND: Obtém dados quando TODOS os campos são verdadeiros:
  -> country é igual a Brazil;
  -> city é igual a Sao Paulo;
  -> contact_title é igual a Marketing Assistant.
*/
SELECT * FROM customers
WHERE country = 'Brazil' AND city = 'Sao Paulo' AND contact_title = 'Marketing Assistant';

/* 
OR: Obtém dados quando AO MENOS UM dos campos são verdadeiros:
  -> city é igual a Rio de Janeiro;
  -> OU city é igual a Sao Paulo.
*/
SELECT * FROM customers
WHERE city = 'Rio de Janeiro' OR city = 'Sao Paulo';

/*
NOT: Obtém todos dados DIFERENTE do campo especificado:
  -> city NÃO pode ser igual a Paris.
*/
SELECT * FROM customers
WHERE city <> 'Paris';

/*
Parênteses: MODIFICA a lógica CONTROLANDO a ordem de validação.
*/
SELECT * FROM customers
WHERE country = 'Germany' AND (city = 'Berlin' OR city = 'Aachen');

----------------------------
-- Operadores de Comparação:
----------------------------

/*
Igualdade: Obtém os dados que forem IGUAIS aos especificados:
  -> country é igual a México.
*/
SELECT * FROM customers
WHERE * = 'Mexico';

/*
Maior que: Obtém os dados que forem MAIORES QUE os especificados:
  -> unit_price é maior que 100.
*/
SELECT * FROM products
WHERE  unit_price > 100;


/*
Menor que: Obtém os dados que forem MENORES QUE os especificados:
  -> unit_price é menor que 10.
*/
SELECT * FROM products
WHERE unit_price < 10;

/*
Maior/Menor ou igual a: Obtém os dados que forem MAIORES/MENORES OU IGUAL aos especificados:
  -> unit_price é maior ou igual a 50;
  -> E (intervalo) unit_price é menor ou igual a 100.
*/
SELECT * FROM products
WHERE unit_price >= 50 AND unit_price <= 100;