SELECT *,
creditLimit + 2000 As new_credit
FROM customers
ORDER BY new_credit DESC;