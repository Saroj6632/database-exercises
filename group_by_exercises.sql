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
select count(last_name) from employees
where last_name like '%q%' and last_name  not like '%qu%'
group by last_name;


#7
#8
#9
#10


