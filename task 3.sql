SELECT first_name, last_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name LIKE 'Sales%'
)
AND salary < (
    SELECT AVG(salary)
    FROM employees e
    WHERE e.department_id IN (
        SELECT department_id
        FROM departments
        WHERE department_name LIKE 'Sales%'
    )
);
