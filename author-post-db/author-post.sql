-- Author - post
--  1 : M

-- Create table Author(
-- 	id int primary key,
-- 	name varchar not null,
-- 	email varchar unique
-- );

Insert into Author values(1, 'Chetan bhagat', 'chetan123@gmail.com');

-- Insert into Author(name, email) values('Chitkani ', 'chet1123@gmail.com');
CREATE SEQUENCE author_id_seq
alter table Author alter column id SET DEFAULT nextval('author_id_seq');

alter table Author alter column id SET DEFAULT nextval('author_id_seq');

ALTER SEQUENCE author_id_seq RESTART WITH 2;

Insert into Author(name, email) values('Chitkani ', 'chet1123@gmail.com');

Insert into Author(name, email) values('firjug ', 'fir1123@gmail.com');


-- Create table post(
-- 	id bigint primary key,
-- 	title varchar(100) default 'some-post',
-- 	description text default 'some-description',
-- 	auth_id int,
-- 	foreign key (auth_id) references Author(id)
-- );


drop table post;

CREATE SEQUENCE generic_id_seq;

Create table post(
	id bigint DEFAULT nextval('generic_id_seq') primary key,
	title varchar(100) default 'some-post',
	description text default 'some-description',
	auth_id int,
	foreign key (auth_id) references Author(id)
);

insert into Post(title, description, auth_id)
values('book review', 'good book must read', 2);



























