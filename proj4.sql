-- Create an SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range. Let this range be defined by two values the user can insert when calling the procedure.
-- Finally, visualize the obtained result-set in Tableau as a double bar chart. 

DROP PROCEDURE if exists project_4;

DELIMITER $$
CREATE PROCEDURE project_4(IN p_max_salary FLOAT, IN p_min_salary FLOAT)
BEGIN
SELECT e.gender, ROUND(AVG(s.salary), 2), d.dept_name
from t_employees e 
JOIN t_salaries s ON s.emp_no = e.emp_no
JOIN t_dept_emp de on de.emp_no = e.emp_no
JOIN t_departments d on de.dept_no = d.dept_no
GROUP BY e.gender, d.dept_no;
END $$

DELIMITER ;

CALL project_4(50000, 90000);





