1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
```sql
select employee_name, monthly_salary 
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id;
```
2. Вывести всех работников у которых ЗП меньше 2000.
```sql
select employee_name, monthly_salary
from employees
join employee_salary
on employees.id = employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id
where salary.monthly_salary < 2000;
```
3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sql
select employee_name, monthly_salary 
from employees
right join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
where employee_name is null;
```
4. Вывести все зарплатные позиции  меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
```sql
select employee_name, monthly_salary 
from employees
right join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
where employee_name is null and monthly_salary<2000;
```
5. Найти всех работников кому не начислена ЗП.
```sql
select employee_name, monthly_salary
from employees
left join employee_salary
on employees.id = employee_salary.employee_id
left join salary on salary.id=employee_salary.salary_id
where monthly_salary is null;
```
6. Вывести всех работников с названиями их должности.
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id; 
```
7. Вывести имена и должность только Java разработчиков.
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Java%';
```
8. Вывести имена и должность только Python разработчиков.
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Python%';
```
9. Вывести имена и должность всех QA инженеров.
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';
```
10. Вывести имена и должность ручных QA инженеров.
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Manual%';
```
11. Вывести имена и должность автоматизаторов QA
```sql
select employee_name, role_name
from employees
join roles_employee 
on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Au%';
```
12. Вывести имена и зарплаты Junior специалистов
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior%';
```
13. Вывести имена и зарплаты Middle специалистов
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Middle%';
```
14. Вывести имена и зарплаты Senior специалистов
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Sen%';
```
15. Вывести зарплаты Java разработчиков
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Java%';
```
16. Вывести зарплаты Python разработчиков
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Python%';
```
17. Вывести имена и зарплаты Junior Python разработчиков
```sql
select employee_name, monthly_salary
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior Python%';
```
18. Вывести имена и зарплаты Middle JS разработчиков
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Middle JavaScript%';
```
19. Вывести имена и зарплаты Senior Java разработчиков
```sql
select employee_name, monthly_salary, role_name 
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Senior Java developer';
```
20. Вывести зарплаты Junior QA инженеров
```sql
select employee_name, monthly_salary, role_name 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior%QA%';
```
21. Вывести среднюю зарплату всех Junior специалистов
```sql
select avg(monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like 'Junior%';
```
22. Вывести сумму зарплат JS разработчиков
```sql
select sum(monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%JavaScript%';
```
23. Вывести минимальную ЗП QA инженеров
```sql
select min(monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';
```
24. Вывести максимальную ЗП QA инженеров
```sql
select max(monthly_salary)
from employees
join employee_salary
on employees.id = employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';
```
25. Вывести количество QA инженеров
```sql
select count(employee_name) 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';
```
26. Вывести количество Middle специалистов.
```sql
select count(employee_name) 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Middle%';
```
27. Вывести количество разработчиков
```sql
select count(employee_name) 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%developer%';
```
28. Вывести фонд (сумму) зарплаты разработчиков.
```sql
select sum(monthly_salary) 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%developer%';
```
29. Вывести имена, должности и ЗП всех специалистов по возрастанию
```sql
select employee_name, role_name, monthly_salary 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
order by monthly_salary;
```
30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
```sql
select employee_name, role_name, monthly_salary 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where monthly_salary between 1700 and 2300
order by monthly_salary;
```
31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
```sql
select employee_name, role_name, monthly_salary 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where monthly_salary<2300
order by monthly_salary;
```
32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
```sql
select employee_name, role_name, monthly_salary 
from employees
full join employee_salary
on employees.id = employee_salary.employee_id
full join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;
```
