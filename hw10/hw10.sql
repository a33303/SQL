
mysql -uroot -p123456 -P3360
use shop;

-- 1. Оптимизация запросов

drop table if exists logs;
create table logs (
    created_at datatime not null,
    table_name varchar(45) not null,
    str_ia bigint(20) not null,
    name_value varchar(45) not null
) engine = archive;


-- Users
drop trigger if exists watchlog_users;
delimiter //
create trigger watchlog_users after insert on users
for each row
begin 
    insert into logs (created_at, table_name, str_id, name_value)
    values (now(), `users`, NEW.id, NEW.name);
end //
delimiter ;


-- Catalogs  
drop trigger if exists watchlog_catalogs;
delimiter //
create trigger watchlog_catalogs after insert on catalogs
for each row
begin 
	insert into logs (created_at, table_name, str_id, name_value)
	values (now(), `catalogs`, NEW.id, NEW.name);
end //
delimiter ;


-- Products 
delimiter //
create trigger watchlog_products after insert on products
for each row
begin 
	insert into logs (created_at, table_name, str_id, name_value)
	values (now(), 'products', NEW.id, NEW.name);
end //
delimiter ;


-- Tests for users 
select * from users;
select * from logs;

insert into users (name, birthday_at)
values ('Кнехт', '1900-01-01');

select * from users;
select * from logs;

insert into users (name, birthday_at)
values ('Liu Kangh', '1900-01-01'),
		('Sub-Zero', '1103-01-01'),
		('Scorpion', '1103-01-01'),
		('Raiden', '0000-00-01');

select * from users;
select * from logs;


-- Tests for catalogs  
select * from catalogs;
select * from logs;

insert into catalogs (name)
values ('Оперативная память'),
		('Куллера'),
		('Аксессуары');

select * from catalogs;
select * from logs;


-- Tests for products  
select * from products;
select * from logs;

insert into products (name, description, price, catalog_id)
values ('PATRIOT PSD34G13332', 'Оперативная память', 3000.00, 13),
		('DARK ROCK PRO 4 (BK022)', 'Куллера', 500.00, 14),
		('Коврик', 'Коврик для мыши', 150.00, 15);

select * from products;
select * from logs;


