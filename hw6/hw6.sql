select * from likes_posts lp 
join users u 
	on u.id = lp.id;

-- Задание 2
	
select * from messages m2 
join users u 
	on u.id = m2.id;
select u.id = (select max(is_read));
as 
from 
-- не успел*

-- Задание 3

select * from likes_posts lp 
join users u 
	on u.id = lp.id;
SELECT `post_id`, `bithday`, `id`, max(likes) 
AS `likepage` 
FROM `post` 
WHERE `bithday` 
GROUP BY `likes_posts`;


-- Задание 4

select 
    likes_posts
    gender = sum ( case when a.Title = 'f' then cast ( 1 as int ) else cast ( 0 as int) end )
    gender = sum ( case when a.Title = 'm' then cast ( 1 as int ) else cast ( 0 as int) end )
from users u2 
group by 
    likes_posts;

   
-- Задание 5

select * from likes_posts lp 
join users u 
	on u.id = lp.id;
select 
likepage, id, name 
from likes_posts lp 
where lp.id = users.id 
where id > all (select min(likepage) from likes_posts lp);   
  


	
