drop table if not exists 'likes';
create table 'likes'(
	'user_id' int(10) unsignes not null,
	'post_id' int(10) unsignes not null,
	key 'post_user_id' ('user_id','post_id'),
	key 'user_id' ('user_id')
) ENGINE=InnoDB;
 