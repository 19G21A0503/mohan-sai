
-- Create A Table 1

create table happy.user(
id int primary key auto_increment,
name varchar(40)not null ,
email varchar(15),
gender varchar(6)
)

SELECT * FROM happy.user;

insert into happy.user(name,email,gender) values('mohan','m@gmmail.com','male');
insert into happy.user(name,email,gender) values('kala','k@gmmail.com','female');
insert into happy.user(name,email,gender) values('sai','s@gmmail.com','male');
insert into happy.user(name,email,gender) values('vasavi','v@gmmail.com','male');

-- Create A Table 2

create table happy.userorder(
ordername varchar(20),
orderprice int,
orderplatform varchar(20),
orderlocation varchar(20) not null,
orderid int not null,
constraint fk_userorder_user_id foreign key(orderid) references happy.user(id)
);

SELECT * FROM happy.userorder;

insert into happy.userorder(ordername,orderprice,orderplatform,orderlocation,orderid) values('Biriyani', 200, 'Zomato', 'Temple BusStop Hyd', 1);
insert into happy.userorder(ordername,orderprice,orderplatform,orderlocation,orderid) values('Chicken Roll', 100, 'Swiggy', 'Lingampally Hyd', 2);
insert into happy.userorder(ordername,orderprice,orderplatform,orderlocation,orderid) values('Coke', 50, 'Zomato', 'Chandhanagar Hyd', 3);

alter table happy.userorder;
DELETE from happy.userorder WHERE orderid = 2;
alter table happy.userorder;
DELETE from happy.userorder WHERE orderid = 3;

-- Create A Joins Tables

SELECT * FROM happy.user AS o1
INNER JOIN happy.userorder AS o2 ON o1.id = o2.orderid;

SELECT * FROM happy.user AS o1
LEFT JOIN happy.userorder AS o2 ON o1.id = o2.orderid;

SELECT * FROM happy.user AS o1
RIGHT JOIN happy.userorder AS o2 ON o1.id = o2.orderid;

SELECT * FROM happy.user
CROSS JOIN happy.userorder;