use employees;
#Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.
select * from employees where first_name IN ('Irena', 'Vidya', 'Maya');
-- 709 rows

#Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?
select * from employees where first_name ='Irene' or 'vidya' or 'Maya';

-- 263 rows No the number matches

#Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.
select * from employees where (first_name ='Irene' or 'vidya' or 'Maya') and gender='M';
-- 158

-- Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?
select* from employees where last_name like'%E' or 'E%';
-- 24292
select* from employees where last_name like'%E' and  not'E%';

# Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E. How many employees' last names end with E, regardless of whether they start with E?
select* from employees where last_name like 'E%' and '%E';

#8
select first_name, last_name, hire_date  from employees where hire_date between '1900-1-1' and '1999-12-31';
-- 300011
#9
select first_name, last_name, birth_date from employees where birth_date like'1%-12-25';
-- 842
#10.
select first_name, last_name from employees  where birth_date like'1%-12-25' and (hire_date between '1900-1-1' and '1999-12-31');
-- 842
#11. 
select* from employees where  last_name 
-- 189
#12.
#select* from employees where last_name like
