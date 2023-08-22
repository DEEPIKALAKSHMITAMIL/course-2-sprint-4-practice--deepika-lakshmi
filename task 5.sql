SELECT job_id, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id
ORDER BY job_id ASC, min_salary ASC;
