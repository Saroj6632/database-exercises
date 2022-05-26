use employees;
-- Q.no 1

SELECT
    emp_no,dept_no,from_date AS start_date,to_date AS end_date,
    to_date > NOW() AS is_current_employee
FROM dept_emp de
ORDER BY emp_no
LIMIT 100;

-- q.no 2
select first_name, last_name, Left(last_name,1) as first_alphabet,
case
	when Left(last_name,1) <= 'H' THEN 'A-H'
    when substr(last_name,1,1) <= 'Q' THEN 'I-Q'
    when Left(last_name,1) <= 'Z' THEN 'R-Z'
    end as alpha_group
    from employees;
    
    
    -- Q.no.3
    SELECT
    COUNT(CASE WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31' THEN birth_date ELSE NULL END) AS '50s',
    COUNT(CASE WHEN birth_date BETWEEN '1960-01-01' AND '1969-12-31' THEN birth_date ELSE NULL END) AS '60s',
	COUNT(CASE WHEN birth_date BETWEEN '1970-01-01' AND  '1979-12-31'THEN birth_date ELSE NULL END) AS '70s'
FROM employees;

-- q.no.4
SELECT
    CASE
        WHEN dept_name IN ('Research', 'Development') THEN 'R&D'
        WHEN dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
        WHEN dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
        WHEN dept_name IN ('Finance', 'Human Resources') THEN 'Finanace & HR'
        ELSE dept_name
    END AS dept_group, salary
FROM departments
JOIN dept_emp  USING (dept_no)
JOIN salaries  USING (emp_no)
WHERE salaries.to_date > NOW() AND dept_emp.to_date > NOW();




    



