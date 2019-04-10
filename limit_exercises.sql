use employees;

-- first 10 distinct last names sorted in descending order
select distinct last_name
from employees
order by last_name desc
limit 10;

-- first 5 employees born on Christmas hired in the 90s
select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc
limit 5;

-- first 5 employees born on Christmas hired in the 90s 10th page
select first_name, last_name
from employees
where hire_date like '199%'
  and birth_date like '%-12-25'
order by birth_date, hire_date desc
limit 5 offset 45;


