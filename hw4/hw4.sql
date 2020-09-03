
INSERT INTO users (email,pass,name,surname,phone,gender,birthday,hometown,photo_id,created_at) 
VALUES 
( ('1', 'tkunze@yahoo.com', NULL, 'repellendus', 'veritatis', '489-086-2543x82753', 'P', '2014-12-03', NULL, '0', '2014-11-05 11:27:14');
('2', 'hollie.ankunding@gmail.com', NULL, 'atque', 'officiis', '1-763-535-1011x44867', 'D', '2013-02-06', NULL, '0', '1991-01-30 12:06:17');
('3', 'wbrakus@gmail.com', NULL, 'corporis', 'animi', '1-330-908-0300', 'D', '1989-03-27', NULL, '0', '1971-01-18 14:01:06');
('4', 'ewaters@gulgowski.com', NULL, 'est', 'minima', '(419)279-5669x239', 'P', '1991-05-23', NULL, '0', '1986-03-18 03:18:03');
('5', 'daron35@blick.com', NULL, 'et', 'voluptates', '04932334084', 'P', '1978-12-06', NULL, '0', '1978-07-11 10:53:40');

select * from users where id > 25 and gender = 'f';

select * from users where id > 25 or gender = 'f';

select * from users where id between 4 and 8; -- работает как и предыдущий пример

	
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

select count(id) from users;

select gender, count(*) from users group by gender;



update friend_requests
set status = 'approved',
	confirmed_at = now()
where initiator_user_id = 2 and target_user_id = 4; 



delete from users1 where id > 14;

insert users1 (email,pass,name,surname,phone,gender,birthday,hometown,photo_id)
select email,pass,name,surname,phone,gender,birthday,hometown,photo_id from users where id > 20;

delete from users1;

truncate table users1;