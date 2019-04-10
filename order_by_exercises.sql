use employees;

--order by first name
select *
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by first_name;

-- order by first name then last name
select *
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by first_name, last_name;

--order by last name then first name
select *
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by last_name, first_name;

--order by last name then first name DESC order
select *
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
and gender = 'M'
order by last_name desc, first_name desc;


-- find last names with an E in their last name
select *
from employees
where last_name like 'E%'
or last_name like '%E';

-- find last names with E and sort by emp. no.
select *
from employees
where last_name like 'E%'
or last_name like '%E'
order by emp_no;

-- find last names with E and sort by emp. no. DESC order
select *
from employees
where last_name like 'E%'
or last_name like '%E'
order by emp_no desc;

select *
from employees
where last_name like 'E%'
and last_name like '%E';


-- employees hired in the 90s and born on Christmas
select *
from employees
where (hire_date between '1990-01-01'
  and '1999-12-31')
and (birth_date like '%-12-25');

select *
from employees
where birth_date like '%-12-25';

-- employees hired in the 90s and born on Christmas order by oldest/hired last
select *
from employees
where hire_date like'199%'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc;

-- employees with 'q' in last name but not 'qu'
select *
from employees
where last_name like '%q%'
and last_name not like '%qu%';