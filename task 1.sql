SELECT
    emp.employee_id,
    emp.first_name,
    emp.last_name,
    (SELECT department_name FROM departments WHERE department_id = emp.department_id) AS department_name
FROM
    employees emp
ORDER BY
    emp.employee_id;
