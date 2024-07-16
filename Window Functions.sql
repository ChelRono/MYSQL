-- AVG
SELECT gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
  
-- SUM 
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- ROW_NUMBER
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total,
RANK() OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rank_total,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY dem.employee_id) AS dense_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id; 