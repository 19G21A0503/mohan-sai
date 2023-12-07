create table happy.`user1`(
id int primary key,
name varchar(40)not null ,
email varchar(40),
gender varchar(6)
)
alter table happy.user1
drop column gender;

alter table happy.user1
add column gender varchar(10);

alter table happy.user1
modify id int primary key;

select*from happy.user1;
insert into happy.user1(id,name,email,gender) values(1,'mohan','m@gmmail.com'), (2,'sai','s@gmail.com'), (3,'kala','k@gmail.com');

update happy.user1 set gender = 'male' where id=1;
update happy.user1 set gender = 'male' where id=2;
update happy.user1 set gender = 'female' where id=3;