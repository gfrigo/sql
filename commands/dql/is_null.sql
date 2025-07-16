-- IS NULL e IS NOT NULL
SELECT region FROM customers
WHERE region IS NOT NULL;

SELECT region FROM customers
WHERE region IS NULL;