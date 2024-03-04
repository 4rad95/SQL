-- 1. Напишите запрос, который выводит идентификатор сотрудника, его имя и фамилию, а также категорию зарплаты на основе следующих условий:

-- Если зарплата меньше 5000, категория "Низкая".
-- Если зарплата от 5000 до 10000, категория "Средняя".
-- Если зарплата больше 10000, категория "Высокая".

select employee_id,first_name,last_name, case 
		when salary > 10000 then 'Высокая'
        when salary > 5000 then 'Средняя'
        else 'Низкая' 
        end as salary_category 
        from employees;

-- Определение размера премии сотрудникам:
-- Напишите запрос, который выводит идентификатор сотрудника, его имя и фамилию, а также размер премии на основе следующих условий:

-- Если зарплата меньше 5000, премия составляет 10% от зарплаты.
-- Если зарплата от 5000 до 10000, премия составляет 15% от зарплаты.
-- Если зарплата больше 10000, премия составляет 20% от зарплаты.

select employee_id,first_name,last_name, case 
		when salary > 10000 then salary*.2
        when salary > 5000 then  salary*.15
        else salary*.1 
        end as bonus 
        from employees;

-- Получить список стран с указанием их региона и обозначением страны "EU" для стран Европейского союза, "Non-EU" для остальных стран.

select country_name, case 
					when region_id = 1 then 'EU'
					else 'Non-EU' 
                    end as region
                    from countries;
-- Получить список стран с указанием количества символов в их названиях.

select country_name, length(country_name) as length_name
                    from countries;


-- Получить список стран и их первые три символа в названии

select country_name, substring(country_name,1,3) as length_name
                    from countries;

-- Получить список сотрудников с заменой их email на "Confidential", если он содержит слово "sqltutorial"

select employee_id,first_name,last_name, case 
		when lower(email) = '%sqltutorial%'  then 'Confidential'
        else email 
        end as filter_email 
        from employees;

-- Получить список сотрудников и указать их email в нижнем регистре.

select employee_id,first_name,last_name, lower(email) 
        from employees;

-- Получить список сотрудников(firstname, lastname) с указанием их должности(job_title).

select t1.first_name, t1.last_name, t2.job_title from employees t1
inner join jobs t2 on t1.job_id=t2.job_id;


-- Получить список отделов(department_name) и их названий с указанием местоположения(city).

select t1.department_name, t2.city  from departments t1
inner join locations t2 on t1.location_id = t2.location_id; 

-- Получить список отделов(departmentname) и их менеджеров(firstname, last_name).

select t1.department_name, t2.first_name, t2.last_name from departments t1
inner join employees t2 on t1.manager_id = t2.employee_id;

-- Получить список сотрудников(firstname, lastname) с указанием их департамента(department_name), отсортированный по департаменту.

select t1.department_name, t2.first_name, t2.last_name from departments t1
inner join employees t2 on t1.department_id = t2.department_id
order by department_name;

-- Получить список сотрудников(firstname, lastname)  и их менеджеров(firstname, lastname) 

select t1.first_name, t1.last_name, t2.first_name as manager_name, t2.last_name as manager_last_name from employees t1
inner join emploeeys t2 on t1.manager_id=t2.employee_id;

-- Получить список стран, где местоположение находится в США.

select country_name from countries 
where region_id=1;
