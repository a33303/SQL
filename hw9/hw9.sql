-- Задание 1.1 Транзакции, переменные, представления

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
use sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	birthday_at DATE DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM users;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM users;


-- Задание 1.2 Транзакции, переменные, представления

CREATE OR REPLACE VIEW prods_desc(prod_id, prod_name, cat_name) AS
SELECT p.id AS prod_id, p.name, cat.name
FROM products AS p
LEFT JOIN catalogs AS cat 
ON p.catalog_id = cat.id;

SELECT * FROM prods_desc;

-- Задание 1.3 Транзакции, переменные, представления

use shop;
DROP TABLE IF EXISTS datetbl;
CREATE TABLE datetbl (
	created_at DATE
);

INSERT INTO datetbl VALUES
	('2018-08-01'),
	('2018-08-04'),
	('2018-08-16'),
	('2018-08-17');

SELECT * FROM datetbl ORDER BY created_at;

SELECT 
	time_period.selected_date AS day,
	(SELECT EXISTS(SELECT * FROM datetbl WHERE created_at = day)) AS has_already
FROM
	(SELECT v.* FROM 
		(SELECT ADDDATE('1970-01-01',t4.i*10000 + t3.i*1000 + t2.i*100 + t1.i*10 + t0.i) selected_date FROM
			(SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t0,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t1,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t2,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t3,
		    (SELECT 0 i UNION SELECT 1 UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9) t4) v
	WHERE selected_date BETWEEN '2018-08-01' AND '2018-08-31') AS time_period;


-- Задание 1.4 Транзакции, переменные, представления

use shop;
DROP TABLE IF EXISTS datetbl;
CREATE TABLE datetbl (
	created_at DATE
);

INSERT INTO datetbl VALUES
	('2018-08-01'),
	('2018-08-02'),
	('2018-08-04'),
	('2018-08-12'),
	('2018-08-14'),
	('2018-08-17'),
	('2018-08-23'),
	('2018-08-27'),
	('2018-08-29'),
	('2018-08-31');

SELECT * FROM datetbl ORDER BY created_at DESC;
SELECT created_at AS below_5 FROM datetbl
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM datetbl
		ORDER BY created_at DESC
		LIMIT 5
	) AS foo
) ORDER BY created_at DESC;

DELETE FROM datetbl
WHERE created_at NOT IN (
	SELECT *
	FROM (
		SELECT *
		FROM datetbl
		ORDER BY created_at DESC
		LIMIT 5
	) AS foo
) ORDER BY created_at DESC;

SELECT * FROM datetbl ORDER BY created_at DESC;


--  Задание 2.1 Администрирование MySQL

-- создаю shop_reader

drop user if exists `shop_rader`@`localhost`;
create user `shop_reader`@`localhost` identified with sha256_password by `123`;
grant select on shop.* to `shop_reader`@`localhost`;

insert into catalogs(name)
values(`new catalog`);
select * from catalogs;

-- создаю shop

drop user if exists `shop`@`localhost`;
create user `shop`@`localhost` identified with sha256_password by `123`;
grant all on shop.* to `shop`@`localhost`;
grant grant option on shop.* to 

insert into catalogs(name)
values(`new catalog`);
select * from catalogs;


-- Задание 2.2 Администрирование MySQL

drop table if exists accounts2;
create table accounts2 (
			id serial primary key,
			name varchar(45),
			password varchar (45)
);

insert into accounts2 values
(null, `Marya`, `123`),
(null, `Alex`, `123`),
(null, `Nadya`, `123`);

create or replace view username(user_id, usser_name) as select id, name from accounts2;

select * from accounts2;
select * from username;

drop user if exists `shop_reader`@`localhost`;
create user `shop-reader`@`localhost` identified with sha256-password by `123`;
grant select on shop.username to `shop_reader`@`localhost`;

select * from catalogs;
select * from username;


-- Задание 3.1 Хранимые процедуры и функции, триггеры

drop procedure if exists hello;
create procedure hello ()
begin 
	if(curtime() between `06:00:00` and `12:00:00`) then select `Доброе утро`;
	if(curtime() between `12:00:00` and `18:00:00`) then select `Добрый день`;
	if(curtime() between `18:00:00` and `00:00:00`) then select `Добрый вечер`;
	end if;
end;
call hello();


-- Задание 3.2 Хранимые процедуры и функции, триггеры

drop trigger if exists null_Trigger;
create trigger mull_trigger before insert on produsts for each row 
begin 
	if(isnull(new.name) and isnull(new.description)) then signal sqlstate `45000` set message_text = `warning trigger!`;
end if;
end;

insert into products (name, description, price, catalog_id)
values (null, null, 5000, 2);

insert into products (name, description, price, catalog_id)
values ("GeForce GTX 1080", null, 15000, 12);

insert into products (name, description, price, catalog_id)
values ("GeForce GTX 1080", "Мощная видеокарта", 15000, 12);

-- Задание 3.3 Хранимые процедуры и функции, триггеры

-- не понял как делать :(