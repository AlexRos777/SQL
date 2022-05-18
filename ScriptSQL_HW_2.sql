create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
select*from employees;
insert into employees(employee_name)
values
('James'),	
('Mary'),	
('Robert'),
('Patricia'),	
('John'),		
('Jennifer'),	
('Michael'),	
('Linda'),
('William'),	
('Elizabeth'),	
('David'),	
('Barbara'),	
('Richard'),	
('Susan'),	
('Joseph'),		
('Jessica'),	
('Thomas'),		
('Sarah'),	
('Charles'),	
('Karen'),	
('Christopher'),	
('Nancy'),	
('Daniel'),		
('Lisa'),	
('Matthew'),	
('Betty'),	
('Anthony'),		
('Margaret'),	
('Mark'),		
('Sandra'),	
('Donald'),		
('Ashley'),	
('Steven'),		
('Kimberly'),	
('Paul'),
('Emily'),	
('Andrew'),	
('Donna'),	
('Joshua'),	
('Michelle'),	
('Kenneth'),		
('Dorothy'),	
('Kevin'),		
('Carol'),	
('Brian'),	
('Amanda'),	
('George'),		
('Melissa'),	
('Edward'),		
('Deborah'),	
('Ronald'),		
('Stephanie'),	
('Timothy'),		
('Rebecca'),	
('Jason'),	
('Sharon'),	
('Jeffrey'),	
('Laura'),	
('Ryan'),	
('Cynthia'),	
('Jacob'), 
('Kathleen'),	
('Gary'),	
('Amy'),	
('Nichola'),	
('Eric'),	
('Angela'),	
('Jonathan'),
('Charles'),	
('Karen');
select*from employees;

create table salary(
	id serial primary key,
	monthly_salary int not null
);
select*from salary;
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
select*from salary;

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);
select*from employee_salary;

insert into employee_salary(employee_id,salary_id)
values (1, 7),
	   (3, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (300, 6),
	   (301, 1),
	   (302, 15),
	   (304, 5),
	   (305, 6),
	   (306, 4),
	   (307, 2),
	   (308, 7),
	   (309, 3),
	   (310, 9),
	   (37, 15),
	   (2, 4),
	   (51, 10),
	   (55, 8),
	   (61, 7),
	   (67, 5),
	   (69, 9),
	   (71, 4),
	   (44, 6),
	   (36, 1),
	   (25, 2),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (12, 10),
	   (17, 11),
	   (72, 12),
	   (77, 13);
select*from employee_salary;

create table roles(
	id serial primary key,
	role_name int unique not null
);
select*from roles;
alter table roles
alter column role_name type varchar(40) using role_name::varchar(30);
insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
select*from roles;

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) 
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
select*from roles_employee;
insert into roles_employee(employee_id, role_id)
values (7, 2),
 	   (20, 4),
 	   (3, 9),
 	   (5, 13),
 	   (23, 4),
 	   (11, 2),
 	   (10, 9),
 	   (22, 13),
 	   (21, 3),
 	   (34, 4),
 	   (6, 7),
 	   (1, 15),
 	   (2, 14),
 	   (4, 1),
 	   (8, 5),
 	   (9, 11),
 	   (12, 12),
 	   (13, 3),
 	   (14, 1),
 	   (15, 12),
 	   (16, 9),
 	   (17, 7),
 	   (18, 8),
 	   (19, 9),
 	   (24, 6),
 	   (25, 5),
 	   (26, 4),
 	   (27, 3),
 	   (28, 2),
 	   (29, 1),
 	   (30, 2),
 	   (31, 3),
 	   (32, 4),
 	   (33, 5),
 	   (35, 6),
 	   (36, 7),
 	   (37, 8),
 	   (38, 9),
 	   (39, 10),
 	   (40, 11);
select*from roles_employee;
































