-- IN e NOT IN
SELECT * FROM customers
WHERE city NOT IN ('Paris', 'Rio de Janeiro', 'Sao Paulo', 'London');

SELECT * FROM customers
WHERE city IN ('Paris', 'Rio de Janeiro', 'Sao Paulo', 'London');