use hr;

-- 1
select employee_id, concat(first_name, ' ', last_name) as full_name, salary
from employees 
where salary > (select salary from employees where last_name = 'bull');
-- 2
select first_name, last_name from employees 
where department_id in (select department_id from departments where department_name = 'IT');
-- 3
select first_name, last_name from employees
where manager_id in (select employee_id from employees 
						where department_id in (select department_id from departments 
                        where location_id in (select location_id from locations where country_id = 'us')));
-- 4 
select first_name, last_name from employees
where employee_id in (select manager_id from employees);
-- 5
select first_name, last_name, salary from employees
where salary > (select avg(salary) from employees);
-- 6 
select first_name, last_name, salary from employees	
where salary = (select min_salary from jobs where employees.job_id = jobs.job_id);
-- 7
select first_name, last_name, salary from employees
where salary > (select avg(salary) from employees)
and department_id in (select department_id from departments where department_name like "IT");
-- 8 
 select first_name,last_name,salary from employees 
 where salary > (select salary from employees where last_name="bell");
 -- 9 
 select first_name,last_name,salary from employees 
 where salary = (select min(salary) from employees);
-- 10 
select first_name,last_name,salary from employees 
where salary > all(select avg(salary) from employees group by department_id);
-- 11 
select first_name, last_name, salary from employees 
where salary > all(select salary from employees where JOB_id="SH_CLERK") 
order by salary desc;
-- 12
select first_name, last_name, salary from employees 
where employee_id not in (select manager_id from employees);
-- 13
select first_name, last_name, salary from employees;
-- 14
select first_name, last_name, salary from employees e 
where salary > (select avg_salary from (select avg(salary) avg_salary,department_id from employees group by department_id) s 
where s.department_id=e.department_id);
-- 15
select * from employees where mod(employee_id, 2) = 0;
-- 16
select salary from employees order by salary desc limit 1 offset 5;
-- 17
select salary from employees order by salary limit 1 offset 4;
-- 18
select * from employees order by employee_id desc limit 10;
-- 19
select department_id, department_name, manager_id from departments 
where department_id not in (select department_id from employees where department_id is not null);
-- 20
select salary from employees order by salary desc limit 3;
-- 21
select salary from employees order by salary asc limit 3;
-- 22
select distinct salary from employees order by salary desc limit 1 offset n-1;