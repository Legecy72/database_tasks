SELECT * 
FROM customers
WHERE creditLimit >= 1000000 AND customerNumber < 200 OR Country = 'USA'