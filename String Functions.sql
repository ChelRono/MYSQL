-- LENGTH
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- UPPER & LOWER
SELECT UPPER(first_name ), LOWER(last_name)
FROM employee_demographics;

-- TRIM
SELECT ('    sky    ');
SELECT TRIM('    sky    ');
SELECT LTRIM('    sky    ');
SELECT RTRIM('    sky    ');

-- RIGHT & LEFT
SELECT first_name, LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name, RIGHT(first_name,4)
FROM employee_demographics;

-- SUBSTRING
SELECT first_name, SUBSTRING(first_name,3,2)
       birth_date, SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- REPLACE
SELECT first_name, REPLACE(first_name,'a','z')
FROM employee_demographics;

-- LOCATE
SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics; 

-- CONCAT
SELECT first_name, last_name,
       CONCAT(first_name, ' ', last_name) AS fullname
FROM employee_demographics;