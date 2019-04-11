use employees;

-- all emplyees who share hire date with emp_no 101010
select concat(first_name, ' ', last_name) as 'Employee', hire_date as 'Hire Date'
from employees
where hire_date in(
  select hire_date
  from employees
  where emp_no = '101010'
  );

-- find all titles held by all employees with first name Aamod
select t.title as 'Title', first_name
from titles as t
join employees as e
on t.emp_no = e.emp_no
where first_name in(
select first_name
from employees
where first_name = 'Aamod'
);

-- find all current dept managers that are female
select first_name, last_name
from employees
where gender = 'F'
 and emp_no in (
select emp_no
from dept_manager as dm
where dm.to_date = '9999-01-01'
);

-- BONUS --

-- find all dept names that have female managers
select d.dept_name
from departments as d
join dept_emp as de
on d.dept_no = de.dept_no
join employees as e
on de.emp_no = e.emp_no
where gender = 'F'
and e.emp_no in (
select emp_no
from dept_manager as dm
where dm.to_date = '9999-01-01'
);

-- find first and last name of employee with highest salary
select e.first_name, e.last_name
from employees as e
join salaries as s
on e.emp_no = s.emp_no
where s.salary in (
select max(salary)
from salaries
);

