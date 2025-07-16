-- LIKE
SELECT contact_name FROM customers
WHERE contact_name LIKE 'M%';

SELECT contact_name FROM customers
WHERE contact_name LIKE '%or%';

SELECT contact_name FROM customers
WHERE contact_name LIKE '_r%';

SELECT contact_name FROM customers
WHERE contact_name LIKE 'A_%_%';

SELECT contact_name FROM customers
WHERE contact_name LIKE 'A%o';

-- SIMILAR TO (LIKE + REGEX EXP)
SELECT city FROM customers
WHERE city SIMILAR TO '(B|S|P)%';

-- POSIX REGEX EXP
SELECT city FROM customers
WHERE city ~ '^[BSP]';

SELECT city FROM customers
WHERE city ~* '^[bsp]';