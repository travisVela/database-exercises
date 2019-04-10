use employees;

select distinct title
from titles;
-- group by unique first name last name combos & log count
select last_name, first_name, count(last_name)
from employees
where last_name like 'e%'
  and last_name like '%e'
group by last_name, first_name;

-- find all last names with a 'q' but not 'qu', group by unique last name and log count
select last_name, count(last_name)
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

-- find all first names that match criteria and group by gender and log count
select count(first_name) as 'First name', gender
from employees
where (first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya')
group by gender;



