-- Отсортировать сотрудников по фамилии в алфавитном порядке.

SELECT * FROM hr.employees
order by last_name;

-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой.

SELECT * FROM hr.employees
order by salary desc;

-- Вывести сотрудников, работающих в департаментах с id 60, 90 и 110, отсортированными в алфавитном порядке по фамилии 

select * from hr.employees
where department_id in (60,90,110)
order by last_name;

-- Вывести трех сотрудников, чьи имена начинаются на букву D и отсортировать их в алфавитном порядке по фамилии

select * from hr.employees
where first_name like 'D%'
order by first_name;

-- Вывести сотрудника с самой низкой зарплатой.

SELECT * FROM hr.employees
order by salary desc
limit 1;
