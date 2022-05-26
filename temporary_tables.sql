use employees;
-- Q.no1
select first_name, last_name, dept_name
    from employees
    join dept_emp using(emp_no)
    join departments using(dept_no)
    where to_date > curdate();
    
create temporary table kalpana_1830.employees_with_departments as(
  select first_name, last_name, dept_name
    from employees.employees
    join employees.dept_emp using(emp_no)
    join employees.departments using(dept_no)
    where to_date > curdate());
    
select* from kalpana_1830.employees_with_departments;
alter table kalpana_1830.employees_with_departments add full_name varchar(50);
update kalpana_1830.employees_with_departments set full_name= concat(first_name,' ',last_name);
alter table kalpana_1830.employees_with_departments drop column last_name;
alter table kalpana_1830.employees_with_departments drop column first_name;
select* from kalpana_1830.employees_with_departments;

drop table if exists  kalpana_1830.employees_with_departments;
-- another way
use employees;
create temporary table kalpana_1830.employees_with_departments as
select concat(first_name,' ',last_name) as full_name, dept_name
from employees
join dept_emp using(emp_no)
join departments using(dept_no)
where to_date> curdate();

select* from kalpana_1830.employees_with_departments;

drop table if exists kalpana_1830.employees_with_departments;

 -- Q.no 2
 use sakila;
 select * from sakila;
 


 
