create schema `basic`

create table basic.`user2`(
id int,
username varchar(50),
area varchar(45),
city varchar(45),
state varchar(45)
);

select*from basic.user2
insert into basic.user2(id,username,area,city,state) values(1,'sai','abc','tirupati','ap'), (2,'A.sai','def','tirupati','ap'), (3,'mohansai','ghi','tirupati','ap');
	update basic.user2 set username='mohan sai' where username='sai';
    
    