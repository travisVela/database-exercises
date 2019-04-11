use employees;

-- show depts and current dept managers
select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
join dept_manager as de
on d.dept_no = de.dept_no
join employees as e
on de.emp_no = e.emp_no
where de.to_date = '9999-01-01';

-- show current dept managers that are female
select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from departments as d
join dept_manager as de
on d.dept_no = de.dept_no
join employees as e
on de.emp_no = e.emp_no
where de.to_date = '9999-01-01'
and gender = 'F';

-- current title of current employees in Customer Service
select t.title as 'Title', count(*) as 'Count'
from titles as t
join dept_emp as de
on t.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where t.to_date = '9999-01-01' and d.dept_no = 'd009' and de.to_date = '9999-01-01'
group by title;

-- current salary of current managers
select d.dept_name as 'Department Name', concat(first_name, ' ', last_name) as 'Name', s.salary as 'Salary'
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no
join salaries as s
on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01' and s.to_date = '9999-01-01';

-- BONUS --
-- find all current employees, dept names, & current dept manager
select concat(e.first_name, ' ', e.last_name) as 'Employee Name', d.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Manager Name'
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees
on dm.emp_no = employees.emp_no
where de.to_date = '9999-01-01' and dm.to_date = '9999-01-01';
