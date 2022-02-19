-------HW_3------

select * from employees;
select * from salary_1;
select * from employee_salary;
select * from roles_1;
select * from roles_emloyee;


-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_id
join salary_1 on salary_1.id = salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary from employee_salary
join employees on employees.id = employee_id
join salary_1 on salary_1.id = salary_id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary from employee_salary
left join employees on employees.id = employee_id
right join salary_1 on salary_1.id = salary_id
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select  employee_name, monthly_salary from employee_salary
left join employees on employees.id = employee_id
right join salary_1 on salary_1.id = salary_id
where employee_name is null and monthly_salary < 2000;

---������ �������

select  employee_name, monthly_salary from employee_salary
left join employees on employees.id = employee_id
left join salary_1 on salary_1.id = salary_id
where monthly_salary < 2000;


-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employee_name, monthly_salary from employee_salary
right join employees on employees.id = employee_id
left join salary_1 on salary_1.id = salary_id
where monthly_salary is null;


-- 6. ������� ���� ���������� � ���������� �� ���������.

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id;

-- 7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id
where role_name like '%Java d%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id
where role_name like '%Python dev%';

-- 9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id
where role_name like '%Manual QA%';

-- 11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from roles_employee
join employees on employees.id = employee_id
join roles_1 on roles_1.id = role_id
where role_name like '%Auto%QA%';

-- 12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name from employee_salary
 join employees on employees.id = employee_salary.employee_id 
 join salary_1 on salary_1.id = salary_id
 join roles_employee on roles_employee.role_id = employees.id
 join roles_1 on roles_1.id = roles_employee.role_id 
where role_name like '%Junior%';


-- 13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary, role_name from employee_salary
 join employees on employees.id = employee_salary.employee_id 
 join salary_1 on salary_1.id = salary_id
 join roles_employee on roles_employee.role_id = employee_salary.employee_id 
 join roles_1 on roles_1.id = roles_employee.role_id 
where role_name like '%Middle%'

-- 14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name from employee_salary
join employees on employees.id = employee_salary.employee_id 
join salary_1 on salary_1.id = employee_salary.salary_id 
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
where role_name like '%Senior%';

-- 15. ������� �������� Java �������������
 
select role_name, monthly_salary from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Java dev%';

-- 16. ������� �������� Python �������������

select role_name, monthly_salary from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Python dev%';


-- 17. ������� ����� � �������� Junior Python �������������

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Junior Python%';


-- 18. ������� ����� � �������� Middle JS �������������

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Middle%J%S%';

-- 19. ������� ����� � �������� Senior Java �������������

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Senior Java dev%';

-- 20. ������� �������� Junior QA ���������

select role_name, monthly_salary from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Junior%';

-- 21. ������� ������� �������� ���� Junior ������������

select avg(monthly_salary) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������

select sum(monthly_salary) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%J%S%';

-- 23. ������� ����������� �� QA ���������

select min(monthly_salary) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������

select max(monthly_salary) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%QA%';

-- 25. ������� ���������� QA ���������

select count(role_name) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%QA%';

----2 �������

select count(role_name) from roles_employee
join roles_1 on roles_1.id  = roles_employee.role_id 
where role_name like '%QA%';

-- 26. ������� ���������� Middle ������������.

select count(role_name) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%Middle%';

--- 2 �������

select count(role_name) from roles_employee
join roles_1 on roles_1.id  = roles_employee.role_id 
where role_name like '%Middle%';

-- 27. ������� ���������� �������������

select count(role_name) from roles_employee
join roles_1 on roles_1.id  = roles_employee.role_id 
where role_name like '%dev%';

--- 2 ������� 

select count(role_name) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%dev%';


-- 28. ������� ���� (�����) �������� �������������.

select sum(monthly_salary) from employee_salary
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where role_name like '%dev%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
order by monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where monthly_salary < 2300
order by monthly_salary asc;


-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 
---1100, 1500, 2000

select employee_name,role_name, monthly_salary from employee_salary 
join employees on employees.id = employee_salary.employee_id
join roles_employee on roles_employee.role_id = employee_salary.employee_id 
join roles_1 on roles_1.id = roles_employee.role_id 
join salary_1 on salary_1.id = employee_salary.salary_id
where monthly_salary in(1100,1500,2000)
order by monthly_salary asc;