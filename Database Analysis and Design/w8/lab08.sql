use hr;
-- 1 
select count(distinct job_id) as avaible_job from employees;
-- 2
select sum(salary) as total_salary from employees;
-- 3 
select min(salary) as min_salary from employees;
-- 4
select max(salary) as max_salary from employees
join jobs using (job_id) where job_title = 'programmer';
-- 5
select avg(salary), count(employee_id) from employees where department_id = 90;
-- 6 
select max(salary), min(salary), sum(salary), avg(salary) from employees;
-- 7 
select job_id, count(distinct employee_id) from employees group by job_id;
-- 8 
select max(salary) - min(salary) as salary_diviation from employees;
-- 9 
select manager_id, min(salary) from employees 
where manager_id != 0
group by manager_id; 
-- 10 
select department_id, sum(salary) from employees
where department_id != 0
group by department_id;
-- 11
select job_id, avg(salary) from employees
join jobs using (job_id) where job_title != 'programmer'
group by job_id order by job_id asc;
-- 12 
select sum(salary), max(salary), min(salary), avg(salary), job_id
from employees where department_id = 90
group by job_id;
-- 13
select job_id, max(salary) from employees
group by job_id having max(salary) >= 4000 order by job_id asc;
-- 14
select department_id, avg(salary) from employees 
group by department_id having count(employee_id) > 10;