use employees;
#2.
select distinct(title) from titles;
-- select title from titles group by title;

#3.
select last_name from employees
where last_name like'E%E'
group by last_name;

#4.
select first_name, last_name from employees
where last_name like 'E%E'
group by first_name, last_name;

#5.
select last_name from employees
where last_name like '%q%' and last_name  not like '%qu%'
group by last_name;
-- 

#6.
select last_name, count(last_name) from employees
where last_name like '%q%' and last_name  not like '%qu%'
group by last_name;


#7
select first_name, gender,count(*)
from employees
where first_name in ('Irene','Vidya', 'Maya')
group by first_name, gender;

#8
SELECT 
    lower(CONCAT(SUBSTR(first_name, 1, 1),
                    substr(last_name, 1, 4),
                    '_',
                    date_format(birth_date, '%m'),
                    substr(birth_date,3,2))) as user_name,
count(*) as count_of_username
FROM employees
group by user_name
having count_of_username >1;

#9 bonus
select emp_no, avg(salary) from salaries
group by emp_no;

#10
select dept_no, to_date as current_employee from dept_emp
where to_date > now()
group by dept_no,current_employee;
##
select emp_no,max(salary) from salaries
group by emp_no;

select emp_no,min(salary) from salaries
group by emp_no;

select emp_no,stddev(salary) from salaries
group by emp_no;







