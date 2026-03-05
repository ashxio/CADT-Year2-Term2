show databases;
use hr;
show tables;
desc departments;
-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments. --
select l.location_id, l.street_address, l.city, l.state_province, c.country_name from departments d 
join locations l on d.location_id = l.location_id
join countries c on l.country_id = c.country_id;
-- 2. Write a query to find the name (first_name, last name), department ID and department name of all the employees. --
select concat(e.first_name, ' ', e.last_name) as full_name, e.department_ID, d.department_name from employees e
join departments d on e.department_id = d.department_id;
-- 3. Write a query to find the name (first_name, last_name), job, department ID and department name of the employees who works in London. --
select e.first_name, e.last_name, e.department_id, d.department_name, l.city from employees e
join departments d on e.department_id = d.department_id
join locations l on d.location_id = l.location_id
where l.city = 'London';
-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name). --
select e.employee_id as 'Emp_Id', e.last_name as 'Employee', m.employee_id as 'Mgr_Id', m.last_name as 'Manager' from employees e
join employees m on e.manager_id = m.employee_id;
-- 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'. --
select concat(first_name, ' ', last_name) as full_name, hire_date from employees 
where hire_date > ( select hire_date from employees where last_name = 'Jones' );
-- 6. Write a query to get the department name and number of employees in the department. --
select d.department_name, count(e.employee_id) as 'Emp_No.' from departments d 
join employees e on d.department_id = e.department_id group by d.department_name;
-- 7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90. --
-- past only (had worked)
select jh.employee_id, j.job_title, datediff(jh.end_date, jh.start_date) as 'Number_Day' from job_history jh
join jobs j on jh.job_id = j.job_id where jh.department_id = 90;
-- both past and present (working and had worked)
select jh.employee_id, j.job_title, datediff(jh.end_date, jh.start_date) AS 'Number_Day' from job_history jh
join jobs j on jh.job_id = j.job_id
join employees e on jh.employee_id = e.employee_id where e.department_id = 90;
-- 8. Write a query to display the department ID and name and first name of manager.
select d.department_id, d.department_name, e.first_name from departments d
join employees e on d.manager_id = e.employee_id;
-- 9. Write a query to display the department name, manager name, and city. --
select d.department_name, concat(e.first_name, ' ', e.last_name) as 'Manager_Name', l.city from departments d
join employees e on d.manager_id = e.employee_id
join locations l on d.location_id = l.location_id;
-- 10. Write a query to display the job title and average salary of employees. --
select j.job_title, avg(e.salary) as 'avg(salary)' from employees e
join jobs j on e.job_id = j.job_id group by j.job_title;
-- 11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. --
select j.job_title, e.last_name, (e.salary - j.min_salary) AS 'difference' from employees e
join jobs j on e.job_id = j.job_id;
-- 12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
select jh.job_id,  j.job_title, concat(e.first_name, ' ', e.last_name) as 'full_name', jh.start_date, jh.end_date, e.salary from job_history jh
join employees e on jh.employee_id = e.employee_id
join jobs j on jh.job_id = j.job_id where e.salary > 10000;
-- 13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years. --
select d.department_name, e.first_name, e.last_name, TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) AS 'exp', e.salary from departments d
join employees e on d.manager_id = e.employee_id where TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) > 15;