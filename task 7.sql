SELECT e.first_name, e.last_name
FROM employees e
WHERE e.manager_id IN (
    SELECT m.employee_id
    FROM employees m
    JOIN departments d ON m.department_id = d.department_id
    JOIN locations l ON d.location_id = l.location_id
    WHERE l.country_id = 'UK'
);
