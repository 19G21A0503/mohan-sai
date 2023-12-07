
-- Create A Table 1

create table happy.product(
id int primary key auto_increment,
pname varchar(50)
);

select * from happy.product;
insert into happy.product(pname) values('lenovo');
insert into happy.product(pname) values('HP');
insert into happy.product(pname) values('DELL');
insert into happy.product(pname) values('ASUS');
insert into happy.product(pname) values('MAC BOOK');

-- Create A Table 2

create table happy.specifications(
id int primary key auto_increment,
pdquantity int,
pdprice int check(length(pdprice)<=5),
pdid int not null ,
constraint fk_specifications_product_id foreign key(pdid) references happy.product(id)
);

select*from happy.specifications;

ALTER TABLE happy.specifications
DROP COLUMN id;

select * from happy.specifications;
insert into happy.specifications(pdquantity,pdprice,pdid)values(1,45000,3);
insert into happy.specifications(pdquantity,pdprice,pdid)values(3,35000,4);
insert into happy.specifications(pdquantity,pdprice,pdid)values(2,40000,2);
insert into happy.specifications(pdquantity,pdprice,pdid)values(5,40000,1);

-- Create A Joins Tables

SELECT * FROM happy.product AS p1
INNER JOIN happy.specifications AS p2 ON p1.id = p2.pdid;

SELECT * FROM happy.product AS p1
LEFT JOIN happy.specifications AS p2 ON p1.id = p2.pdid;

SELECT * FROM happy.product AS p1
RIGHT JOIN happy.specifications AS p2 ON p1.id = p2.pdid;

SELECT * FROM happy.product
CROSS JOIN happy.specifications;