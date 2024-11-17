create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Sidorov', 20, '+7_916_3332211')
('Mary', 'Petrova', 25, '+7_916_3332212')
('Anna', 'Ivanova', 34, '+7_916_3332213')
('Mark', 'Platonov', 10, '+7_916_3332214')
('Petr', 'Bashmakov', 65, '+7_916_3332215');


insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES ('05.09.2024', 1, 'apples', 100)
('04.09.2024', 2, 'lemons', 200)
('03.09.2024', 3, 'peaches', 300)
('02.09.2024', 4, 'pears', 400)
('01.09.2024', 5, 'orange', 500);