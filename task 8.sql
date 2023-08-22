SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5
INTO OUTFILE '/path/to/output.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
