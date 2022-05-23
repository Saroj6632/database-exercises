-- Find all the current employees with the same hire date as employee 101010 using a sub-query.
select * from employees
where hire_date= (select hire_date from employees where emp_no=101010);

-- Find all the titles ever held by all current employees with the first name Aamod.
select title from titles
where emp_no in (select emp_no from employees where first_name='Aamod');


-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.
SELECT count(*) AS total
FROM employees 
WHERE emp_no NOT IN (
SELECT emp_no
FROM salaries
WHERE to_date > now()
);

-- Find all the current department managers that are female. List their names in a comment in your code.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE to_date > NOW()
)
  AND gender = 'F';
  -- 'Isamu','Legleitner'
-- 'Karsten','Sigstam'
-- 'Leon','DasSarma'
-- Hilary','Kambil'

  
-- Find all the employees who currently have a higher salary than the companies overall, historical average salary.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
SELECT emp_no
FROM salaries
WHERE salary >= 
    (SELECT avg(salary)
    FROM salaries)
AND to_date > now()
);


-- How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?
SELECT count(salary) AS number_of_salaries
FROM salaries 
WHERE to_date > now()
AND salary >= 
    (SELECT max(salary) - stddev(salary)
    FROM salaries
    where to_date>curdate());

-- Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
      AND to_date > NOW());

-- Find the first and last name of the employee with the highest salary.
select first_name, last_name from employees
where emp_no = ( select emp_no from salaries
where salary=(select max(salary)from salaries));
-- Ans 'Tokuyasu', 'Pesch'


-- Find the department name that the employee with the highest salary works in.
SELECT dept_name 
FROM departments 
JOIN dept_emp  ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.emp_no IN ( 
SELECT emp_no
FROM salaries
WHERE salary >= (SELECT max(salary)
FROM salaries));
