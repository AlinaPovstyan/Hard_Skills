create table salary (
	id serial primary key,
	monthly_salary int not null
);

create table roles(
	id serial primary key,
	role_title varchar (30) unique not null
);

create table roles_salary(
	id serial primary key, 
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
)

insert into salary (monthly_salary)
values (1250),
		(1400),
		(1500),
		(1600),
		(1700),
		(2500),
		(10000);

insert into roles (role_title)
values ('QA_Junior'),
		('QA_Middle'),
		('QA_Senior'),
		('QA_Manager'),
		('Automation_QA_Junior'),
		('Automation_QA_Middle'),
		('Automation_QA_Senior'),
		('Python_Developer_Junior'),
		('Python_Developer_Middle'),
		('Python_Developer_Senior'),
		('HR'),
		('Manager'),
		('CEO'),
		('JS_Developer_Junior'),
		('JS_Developer_Middle'),
		('JS_Developer_Senior'),
		('Accounter'),
		('Lawyer'),
		('IT'),
		('Support'),
		('Designer');
		
insert into roles_salary(id_role, id_salary)
values  (1,5),
		(2,3),
		(3,7),
		(4,2),
		(5,3),
		(6,6),
		(7,1),
		(8,8),
		(9,7);
	
select * from roles_salary;
select * from roles;
select * from salary;


-------HW_2------

--1. Создать таблицу employees
--- 1) id. serial,  primary key,
--- employee_name. Varchar(50), not null
--  2)Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (employee_name)
values  ('Harper Carter'),
		('Ramon Long'),
		('Tyrone Mitchell'),
		('Kaleb Watson'),
		('Francisco Lee'),
		('Varden Sanchez'),
		('Jackson Martinez'),
		('Joseph Roberts'),
		('Emilio Collins'),
		('Flynn Ross'),
		('Shawn Murphy'),
		('Harrison Price'),
		('Gentry Williams'),
		('Zachery Hayes'),
		('Christopher Howard'),
		('Alan King'),
		('Ubaldo Bennett'),
		('Emmanuel Davis'),
		('Austin Torres'),
		('Maximilian Cook'),
		('Jaxon Coleman'),
		('Kane Thompson'),
		('Bryson Ramirez'),
		('Vidal Perez'),
		('Ilan Barnes'),
		('Xavion Williams'),
		('Giovanni Thompson'),
		('Zackary Hayes'),
		('Obed Barnes'),
		('Yasir Brooks'),
		('Xandros Perez'),
		('Bryson Brown'),
		('Javier Evans'),
		('Alan Murphy'),
		('Zain Washington'),
		('Dean Evans'),
		('Yasser Ward'),
		('Derrick Walker'),
		('Finn King'),
		('Ulysses Moore'),
		('Wallace Hall'),
		('Xandros Kelly'),
		('Milan Alexander'),
		('Kingsley Alexander'),
		('Vernon Moore'),
		('Chase Bailey'),
		('William Gray'),
		('Bruno Garcia'),
		('Quent Rivera'),
		('Barrett Jones'),
		('Zayd Adams'),
		('Wes Washington'),
		('Grady Wood'),
		('Valente Harris'),
		('Ibrahim Miller'),
		('Todd Stewart'),
		('Warner White'),
		('Ursel Hall'),
		('Lorenzo Barnes'),
		('Graysen Brooks'),
		('Sergio Brown'),
		('Varun Martinez'),
		('Patricio Rodriguez'),
		('Richard Peterson'),
		('Pembroke Martin'),
		('Frederick Gray'),
		('Yasir Coleman'),
		('Lukas Johnson'),
		('Ziyad Garcia'),
		('Quinto Watson');

select * from employees;


--2. Создать таблицу salary
--- 1)id. Serial  primary key,
--- monthly_salary. Int, not null
--	2)Наполнить таблицу salary 15 строками:

create table salary_1(
	id serial primary key,
	monthly_salary int not null
);

insert into salary_1(monthly_salary)
values  (1000),
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
		(2300),
		(2400),
		(2500);
		
select * from salary_1;


--3.Создать таблицу employee_salary
--- 1)id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--	2) Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(employee_id,salary_id)
values  (1,1),
		(2,2),
		(7,3),
		(4,4),
		(10,5),
		(6,6),
		(3,10),
		(8,8),
		(9,9),
		(5,7),
		(11,11),
		(12,12),
		(19,13),
		(14,15),
		(15,14),
		(25,1),
		(17,2),
		(18,3),
		(13,4),
		(20,5),
		(21,6),
		(22,7),
		(29,8),
		(24,9),
		(16,10),
		(26,11),
		(27,12),
		(28,13),
		(23,14),
		(30,15),
		(999,15),
		(888,1),
		(777,3),
		(666,4),
		(555,6),
		(444,8),
		(333,10),
		(222,4),
		(111,2),
		(969,13)
		
		
select * from employee_salary;



--Таблица roles
--1) Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--2) Поменять тип столба role_name с int на varchar(30)
--3) Наполнить таблицу roles 20 строками:

create table roles_1(
	id serial primary key,
	role_name int not null unique
);

alter table roles_1
alter column role_name type varchar(30);

insert into roles_1(role_name)
values  ('Junior Python developer'),
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
		('Senior Automation QA engineer')
		
select * from roles_1;


--Таблица roles_employee
--
--1) Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--2) Наполнить таблицу roles_employee 40 строками:

create table roles_emloyee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_1(id)
);


insert into roles_emloyee(employee_id,role_id)
values  (1,5),
		(4,2),
		(7,4),
		(3,1),
		(8,10),
		(2,6),
		(10,3),
		(13,9),
		(25,14),
		(5,7),
		(35,11),
		(6,8),
		(12,17),
		(16,12),
		(9,20),
		(11,18),
		(20,16),
		(15,19),
		(18,13),
		(32,15),
		(14,3),
		(17,20),
		(33,13),
		(27,1),
		(19,2),
		(21,8),
		(24,11),
		(30,17),
		(37,19),
		(40,5),
		(22,9),
		(23,6),
		(29,14),
		(31,7),
		(36,18),
		(26,16),
		(39,12),
		(34,10),
		(38,4),
		(28,15)
		
		
select * from roles_emloyee;
