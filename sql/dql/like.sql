-- Definição: Filtragem de textos com coringas (% e _)

-- -- Inicia com 'M' (qualquer sequência depois)
SELECT contact_name FROM customers
WHERE contact_name LIKE 'M%';

-- Contém 'or' em qualquer posição
SELECT contact_name FROM customers
WHERE contact_name LIKE '%or%';

-- Segunda letra é 'r' (qualquer primeira letra e qualquer sequência depois)
SELECT contact_name FROM customers
WHERE contact_name LIKE '_r%';

-- Inicia com 'A' e possui pelo menos duas letras a mais (ex: Ana, Abc, etc.)
SELECT contact_name FROM customers
WHERE contact_name LIKE 'A_%_%';

-- Inicia com 'A' e termina com 'o' (qualquer sequência no meio)
SELECT contact_name FROM customers
WHERE contact_name LIKE 'A%o';

-- Inicia com 'B', 'S' ou 'P' (usando regex SQL)
SELECT city FROM customers
WHERE city SIMILAR TO '(B|S|P)%';

-- Inicia com B, S ou P (case-sensitive)
SELECT city FROM customers
WHERE city ~ '^[BSP]';

-- Inicia com b, s ou p (case-insensitive)
SELECT city FROM customers
WHERE city ~* '^[bsp]';