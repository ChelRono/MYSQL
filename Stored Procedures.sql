--  Method 1
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

-- Method 2
CREATE PROCEDURE large_salaries2()
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000; 

CALL large_salaries2();

-- Method 3
DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000; 
END $$
DELIMITER ;

CALL large_salaries3();

-- Method 4
DELIMITER $$
CREATE PROCEDURE large_salaries5(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
	WHERE employee_id = p_employee_id
    ;
END $$
DELIMITER ;

CALL large_salaries5(1); 

