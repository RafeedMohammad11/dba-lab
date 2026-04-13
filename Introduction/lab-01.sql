SELECT * FROM Employees;

SELECT department_id, COUNT(*) as employee_count FROM employees GROUP BY department_id;

select employee_id, first_name, salary * 12 as "Anual Salary", salary*12 + salary * nvl(commission_pct, 0) as "Annual Salary with Commission"
from Employees;