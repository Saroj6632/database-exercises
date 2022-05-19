use employees;
#2
select   distinct last_name from employees
order by last_name desc
limit 10;

#3.
select* from employees where birth_date like'19%-12-25' and (hire_date between '1990-01-01' and '1999-12-31')
order by hire_date asc
limit 5;

#4.
select* from employees where birth_date like'19%-12-25' and (hire_date between '1990-01-01' and '1999-12-31')
order by hire_date asc
limit 5 offset




#4
