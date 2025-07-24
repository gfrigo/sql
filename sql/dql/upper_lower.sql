-- Definição: Modos diferentes validação/visualização de dados

-- LOWER(): Conversão dos dados da coluna para caracteres minúsculos.
SELECT contact_name FROM customers
WHERE LOWER(contact_name) LIKE 'a%';

-- UPPER(): Conversão dos dados da coluna para caracteres maiúsculos.
SELECT UPPER(contact_name) FROM customers
WHERE UPPER(contact_name) LIKE 'A%';