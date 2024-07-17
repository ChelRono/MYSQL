-- Method 1
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movie varchar(50)
) ;

INSERT INTO temp_table
VALUES('Valarie','Rono','Friends');

SELECT *
FROM temp_table;

-- Method 2
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_over_50k; 