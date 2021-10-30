--создание одной из 5 таблиц и установка внешнего ключа
CREATE TABLE roles_employee
(
    id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);


--заполнение таблицы
insert into roles_employee (id, employee_id, role_id) values (default, 1, 1)

--вывод
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;

