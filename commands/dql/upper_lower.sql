-- UPER() e LOWER()
SELECT contact_name FROM customers
WHERE LOWER(contact_name) LIKE 'a%';

SELECT UPPER(contact_name) FROM customers
WHERE UPPER(contact_name) LIKE 'A%';