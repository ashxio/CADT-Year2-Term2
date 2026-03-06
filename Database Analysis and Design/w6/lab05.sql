use hr;
select * from employees where department_id IN (50, 70, 90);
select * from employees where first_name like 'o%';
select * from employees where first_name like '%la%'; 
select * from employees where last_name like 'k%o';
select * from employees order by employee_id limit 3 offset 7;