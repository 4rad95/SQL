--  1 уровень сложности: 1. Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null
-- прошли времена калькуляторов!


create table employees (
 employeeid integer primary key auto_increment,
 fname varchar(50) not null,
 lastname varchar(50) not null,
 email varchar(50) not null,
 phone varchar(20) not null
);

-- Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2),
-- может ну ее? Пусть так работают.... Но если надо то пожалуйста:

alter table employees
add salary numeric(9, 2) after phone;

-- йййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer 
-- Я бы сделал дробным причем целую часть не больше 0!

alter table employees
 modify column salary integer;

-- Переименовать поле fname на first_name
--  Ну такое cтарый вариант лучше, набирать быстрее.

alter table employees
 rename column fname to first_name;


-- Удалить поле phone
-- правильно не зачем звонить, есть телеграмм!alter

alter table employees
drop column phone;семь

-- Добавить поле department строка не null 
-- Отделы.... Зачем нам 15 отделов для семи человек?

alter table employees
add department varchar(50) not null after email;

-- Заполнить таблицу (7 строк)
-- О пошли работнички! Хорошая зарплата - залог хорошей работы!


insert into employees (first_name,lastname,email,department,salary)
values ('Ваня','Иванов','4vanya@mail.ne.ru','Охрана',0),
	   ('Саня','Александров','4sanya@mail.ne.ru','Охрана',0),
       ('Сергей','Сергеев','4erg@mail.ne.ru','Охрана',0),
       ('Петр','Петренко','4petr@mail.ne.ru','Охрана',0),
       ('Назар','Назаров','4nazar@mail.ne.ru','Охрана',0),
       ('Семен','Семенов','4cemen@mail.ne.ru','Охрана',0),
       ('Марат','Мартовский','4marat@mail.ne.ru','Охрана',0);

