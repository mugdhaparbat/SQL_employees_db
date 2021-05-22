-- Employees database project

-- Create a visualisation that provides a breakdown between male and female employees working in the company each year starting from 1990.

use employees_mod;
SELECT 
    *
FROM
    t_employees;

SELECT 
    YEAR(d.from_date) AS year,
    e.gender,
    COUNT(e.emp_no) AS num_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON d.emp_no = e.emp_no
GROUP BY year , e.gender
HAVING year >= '1990'
ORDER BY year;




