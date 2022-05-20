# q1
use join_example_db;
select* from users;
select* from roles;
 
# Q.no 2
# inner join
select*
from users
join roles on users.id=roles.id;
##left join
select*
from users
left join roles on users.id=roles.id;

##right join
select*
from users
right join roles on users.id=roles.id;

# Q.no 3



# 

use employees;
-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
select dept_name, concat(first_name, ' ',last_name) as full_name  from dept_manager as dm
join departments as d on dm.dept_no=d.dept_no
join employees as e on dm.emp_no=e.emp_no
where dm.to_date> now();

-- Find the name of all departments currently managed by women.
select dept_name, concat(first_name,' ', last_name)as head_of_department
from employees
join dept_manager on employees.emp_no= dept_manager.emp_no
join departments on dept_manager.dept_no= departments.dept_no
where employees.gender='F';

#Q.no 4 Find the current titles of employees currently working in the Customer Service department.
select title, count(title) as no_of_people
from titles
group by titles;







