# SQL_case_study1

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


-- Result table ![Screenshot 2021-05-22 at 14 40 00](https://user-images.githubusercontent.com/82305674/119221168-a90a7000-bb0b-11eb-8617-e2a3a12160b8.png)


-- Check out my Tableau Public for data viz or ![Screenshot 2021-05-22 at 14 18 35](https://user-images.githubusercontent.com/82305674/119221173-b0317e00-bb0b-11eb-90fb-794cd03e0edf.png)




