-- DML
-- create INSERT
-- read SELECT
-- update UPDATE
-- delete DELETE, TRUNCATE

-- INSERT #1
INSERT INTO users (email,pass,name,surname,phone,gender,birthday,hometown,photo_id,created_at) VALUES 
('qwe@asdf.qw','fdkjgsdflskdjfgsdfg142356214','Сергей','Сергеев','123123123','m','1983-03-21','Одинцово',395,'2020-08-31 22:55:58.0');

INSERT INTO users (email,pass,name,surname,phone,gender,birthday,hometown,photo_id,created_at) 
VALUES 
('ejaslem1@typepad.com','c2ca3c61fe024e49a9c758a109611c65aac31a15','Вера','Клюквина','804-926-3977','f','1987-03-15','Сатка',652,'2020-08-31 22:55:58.0'),
('cattack2@unc.edu','5f91ea663688cc873be65a6cc107f07da84664ae','Ирина','Кийко','213-952-7247','f','1986-05-22','Зубцов',75,'2020-08-31 22:55:58.0'),
('scasotti3@usgs.gov','f93c320ee2275544eb1b42d8278133c343fa5030','Виктория','Водопьянова','418-701-1526','f','1984-04-06','Костерево',418,'2020-08-31 22:55:58.0'),
('segginton4@cam.ac.uk','e6ab5f555555fb26c7c60ddd23c8118307804330','Дмитрий','Тимашов','451-335-9033','m','1984-06-19','Горячий Ключ',865,'2020-08-31 22:55:58.0'),
('aswaddle5@altervista.org','b25e49362b83833eece7d225717f2e285213bf25','Владислав','Авраменко','187-446-2339','m','1987-07-07','Павловское',72,'2020-08-31 22:55:58.0'),
('fleahey6@ftc.gov','07521436ef4b4ad464ed04cdceb99f422bbbd9c5','Алексей','Величко','295-179-8252','m','1984-11-27','Кедровый',763,'2020-08-31 22:55:58.0'),
('rcasley7@exblog.jp','5aac7b105729d4ad431db6a4e73604ecec132fa8','Артем','Филипцов','323-732-2265','m','1984-08-04',NULL,601,'2020-08-31 22:55:58.0'),
('rlantry8@pen.io','ba6c51c3064c20f9de84d4ed69733d9dd408e504','Елена','Колдаева','373-114-4657','f','1989-08-07','Усолье-Сибирское',713,'2020-08-31 22:55:58.0'),
('egoatcher9@behance.net','16f4e6ac1aedd2d9707b56d767f452f3246e67f7','Андрей','Антипов','877-485-8608','m','1984-09-04','Яхрома',760,'2020-08-31 22:55:58.0');


-- INSERT #2
INSERT INTO users
set
	email='dcolquita@ucla.edu',
	pass='1487c1cf7c24df739fc97460a2c791a2432df062',
	name='Евгений',
	surname='Грачев',
	phone='974-490-6651',
	gender='m',
	birthday='1987-11-26',
	hometown='Боровое',
	photo_id=663;

-- INSERT #3 insert...select

show create table users; -- смотрим код создания таблицы users и на его основе создаём users1

CREATE TABLE `users1` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `name` (`name`,`surname`)
);

-- вставка данных из другой таблицы
insert users1
select * from users;

-- select

select 'hello!';
select 2*5;

select * from users;

select * from users limit 5;

select * from users limit 5 offset 5;

select * from users limit 3 offset 8;
select * from users limit 8,3; -- работает как и предыдущий пример

select surname, name, phone from users;

select concat(surname,' ',name) as list, phone from users;

select surname, name, phone from users where name = 'Артем';

select * from users where id > 25 and gender = 'm';

select * from users where id > 25 or gender = 'm';

select * from users where id >= 5 and id <=10; 
select * from users where id between 5 and 10; -- работает как и предыдущий пример

select surname, name, hometown from users 
	where hometown = 'Вытегра' 
	or hometown = 'Навашино' 
	or hometown = 'Агидель' 
	or hometown = 'Котлас';
	
select surname, name, hometown from users 
	where hometown in ('Вытегра', 'Навашино', 'Агидель','Котлас');
	
select surname, name from users where surname like 'Г%';

select surname, name, hometown from users where hometown like '%о%';

select surname, name from users where name like 'М_____';

select distinct name from users;

select surname from users order by surname desc;

select count(*) from users where gender = 'f';

select * from users where hometown = null; -- неверно!!!

select * from users where hometown is null;
select * from users where hometown is not null;

select count(id) from users;
select count(hometown) from users;

select gender, count(*) from users group by gender;

-- update

update friend_requests
set status = 'approved',
	confirmed_at = now()
where initiator_user_id = 1 and target_user_id = 2; 

-- delete, truncate

delete from users1 where id > 20;

insert users1 (email,pass,name,surname,phone,gender,birthday,hometown,photo_id)
select email,pass,name,surname,phone,gender,birthday,hometown,photo_id from users where id > 20;

delete from users1;

truncate table users1;