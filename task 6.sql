SELECT first_name, last_name, department_id
FROM employees
WHERE salary > 0.6 * (SELECT SUM(salary) FROM employees e2 WHERE e2.department_id = employees.department_id)
ORDER BY department_id;
