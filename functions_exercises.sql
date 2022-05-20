#1.
use employees;

#2.

#3.
select first_name, last_name, concat(first_name,last_name)as full_name from employees  where last_name like 'E%E';


#4.
select first_name, last_name, upper(concat(first_name,last_name))as full_name from employees  where last_name like 'E%E';

#5.
SELECT 
    first_name, last_name, birth_date, hire_date, datediff(curdate(),hire_date) as number_of_days
FROM
    employees
WHERE
    birth_date LIKE '1%-12-25'
        AND (hire_date BETWEEN '1900-1-1' AND '1999-12-31');
select min(salary), max(salary) from salaries
where to_date > now();

#6.
SELECT 
    first_name,
    last_name,
    lower(CONCAT(SUBSTR(last_name, 1, 1),
                    substr(first_name, 1, 4),
                    '_',
                    substr(birth_date,6,2),
                    substr(birth_date,3,2))) as user_name
FROM
    employees; 


