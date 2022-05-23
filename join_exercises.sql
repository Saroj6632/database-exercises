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
select dept_name, concat(first_name, ' ',last_name) as full_name  
from dept_manager as dm
join departments as d on dm.dept_no=d.dept_no
join employees as e on dm.emp_no=e.emp_no
where dm.to_date> now();

-- Find the name of all departments currently managed by women.
select dept_name, concat(first_name,' ', last_name)as head_of_department
from employees
join dept_manager on employees.emp_no= dept_manager.emp_no
join departments on dept_manager.dept_no= departments.dept_no
where employees.gender='F';


-- #Q.no 4 Find the current titles of employees currently working in the Customer Service department.
select titles.title, count(*)
from titles
join dept_emp on titles.emp_no =dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where titles.to_date ='9999-01-01'
   and dept_emp.to_date ='9999-01-01'
   and departments.dept_name='CustomerService'
 group by titles.title;


-- #Q.no 5 Find the current salary of all current managers
select salaries.salary,concat(employees.first_name, ' ',employees.last_name) as current_managers,departments.dept_name
from departments
join dept_manager on departments.dept_no =dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date= '9999-01-01'
and salaries.to_date ='9999-01-01'
order by departments.dept_name;

-- # 6.Find the number of current employees in each department.
select dept_no,dept_name, count(*) as employee_number
from departmnets
join dept_emp on departments.dept_no = dept_emp.dept_no
where to_date>now()
group by dept_no;


#q.no.7 Which department has the highest average salary? Hint: Use current not historic information.
select dept_name,AVG(salary) as 'average_salary'
from salaries
join dept_emp on salaries.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where dept_emp.to_date > now()
 and salaries.to_date> now()
 group by dept_name
 order by 'average_salary' desc;
 
 
 
#q.no.8 Who is the highest paid employee in the Marketing department?
SELECT first_name, last_name, salary
FROM employees
JOIN dept_emp on dept_emp.emp_no = employees.emp_no
JOIN salaries on salaries.emp_no = dept_emp.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE salaries.to_date > now()
AND dept_emp.to_date > now()
AND dept_name = "Marketing"
ORDER BY salary DESC;





-- #q.no 9 Which current department manager has the highest salary?
SELECT concat(first_name,' ', last_name) as manager_name, salary, dept_name
FROM dept_manager
JOIN employees on dept_manager.emp_no = employees.emp_no 
JOIN salaries on employees.emp_no =salaries.emp_no
JOIN departments  on dept_manager.dept_no=departments.dept_no
WHERE salaries.to_date > now()
AND dept_manager.to_date > now()
ORDER BY salary DESC;



#q.no10 Determine the average salary for each department. Use all salary information and round your results.
select AVG(salary) as 'department_average_salary', dept_name
from salaries
join dept_emp on salaries.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
group by dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name.
# Bonus Who is the highest paid employee within each department.










