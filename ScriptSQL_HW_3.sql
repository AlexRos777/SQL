select * from employees order by id;
select * from roles_employee; 
select * from roles;
select * from salary;
select * from employee_salary order by id;

select employee_name, monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

select employee_name, monthly_salary
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < '2000' order by monthly_salary;

select employee_name, monthly_salary
from employee_salary 
full outer join employees on employee_salary.employee_id = employees.id 
full outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id > '70';

select employee_name, monthly_salary
from employee_salary 
full outer join employees on employee_salary.employee_id = employees.id 
full outer join salary on employee_salary.salary_id = salary.id
where employee_salary.employee_id > '70' and salary.monthly_salary < '2000';

select *
from employees
full join employee_salary on employees.id = employee_salary.employee_id
where employees.id > '30' order by employees.id;

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java %';

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '% Python %';

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '% QA %';

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '% Manual QA %';

select employee_name, role_name
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '% Automation %';

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior%';

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle%';

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior%';

select monthly_salary, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% Java %';

select monthly_salary, role_name
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% Python %';

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior Python %';

select employee_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Middle JavaScript %';

select *
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Senior Java%';

select *
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%Junior % QA %';

select AVG(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Junior%';

select SUM(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%JavaScript%';

select min(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% QA engineer';

select max(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% QA engineer';

select count(roles.role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '% QA engineer';

select count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like 'Middle %';

select count(role_name)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';

select sum(monthly_salary)
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where role_name like '%developer';

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary between '1700' and '2300' order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary < '2300' order by monthly_salary;

select employee_name, role_name, monthly_salary
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
join roles on roles_employee.role_id = roles.id 
where monthly_salary in ('1100','1500', '2000') order by monthly_salary;

































