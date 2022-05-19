#2 Irene Reutenauer -first person and Vidya simmen was last person
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

#3.
select first_name, last_name from employees where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;
-- irene Acton first person and Vidya zweizig was last person

#4
select  last_name, first_name from employees where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name , first_name;
-- Irene Acton first row and Maya zyda on last row

#5
select first_name, last_name, emp_no from employees where last_name like'E%E'
order by emp_no ASC;
-- total og 899 employees. #first employee number='Ramzi','Erde','10021' ,   last='Tadahiro','Erde','499648'


#6.
select first_name, last_name, hire_date from employees where last_name like'E%E'
order by hire_date DESC;
-- 899 employee eith last name starting and ending with "E". 
-- TEIJI ELDRIDGE is the newest employee whereas SERGI ERDE is oldest employee

#7.

select first_name, last_name, birth_date, hire_date from employees where birth_date like'1%-12-25' and (hire_date between '1900-1-1' and '1999-12-31')
order by birth_date DESC, hire_date ASC;
--  youngest='Woody','Ghalwash','1964-12-25','1985-02-22'

-- oldest='Khun','Bernini','1952-12-25','1999-08-31'







