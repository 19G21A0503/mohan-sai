create schema `realestate`;

create table realestate.propertytype(
id int primary key auto_increment,
type varchar(30),
description varchar(300)
);

insert into realestate.propertytype(type,description) values('house', 'house description'), ('villa', 'villa description'), ('apartement', 'apartement description'), ('land', 'land description');

select * from realestate.propertytype;

-- creating table 2

create table realestate.property(
id int primary key auto_increment,
propertytypeid int,
name varchar(30),
dimension varchar(25),
constraint fk_property_propertytype_propertytypeid foreign key(propertytypeid) references realestate.propertytype(id)
);

insert into realestate.property(propertytypeid,name,dimension) values(3,'house1','1 acer'), (2,'villa1','0.5 acer'),(1,'apartement','2 acer'),(4,'land','1.2 acer');

select * from realestate.property;

-- Create A Table 3

create table realestate.address(
id int primary key auto_increment,
street varchar(25),
landmark varchar(25),
state varchar(15),
country varchar(10),
pincode int
);

insert into realestate.address(street,landmark,state,country,pincode) values('temple busstop','andhrabank road','telangana','india',500000), ('audarsh nagar','lingampally','telangana','india',500028),('metro','kphb colony','telangana','india',500057);

select  * from realestate.address;

-- Create A Table 4

create table realestate.addressmapping(
id int primary key auto_increment,
propertyid int,
addressid int,
constraint fk_addressmapping_property_propertyid foreign key(propertyid) references realestate.property(id),
constraint fk_addressmapping_address_addressid foreign key(addressid) references realestate.address(id)
);

insert into realestate.addressmapping(propertyid,addressid) values(1,2), (1,3), (2,1), (2,3);

select * from realestate.addressmapping;

select * from realestate.propertytype as pt1 
join realestate.property as pt2 on pt1.id = pt2.propertytypeid
join realestate.addressmapping as pt4 on pt4.propertyid = pt2.propertytypeid
join realestate.address as pt3 on pt3.id = pt4.addressid;


create table employeedata(
id int,
name varchar(45),
salary bigint,
state varchar(15),
country varchar(15)
);

insert into employeedata() values(1,'Dhahul',30000,'Andhra pradesh','Indian');
insert into employeedata() values(2,'Sai',75000,'Andhra pradesh','Indian');
insert into employeedata() values(3,'Ahmed',55000,'Andhra pradesh','Indian');
insert into employeedata() values(4,'Rajeev',45000,'Andhra pradesh','Indian');
insert into employeedata() values(5,'Mohan',62000,'Andhra pradesh','Indian');
insert into employeedata() values(6,'Naveen',40000,'Andhra pradesh','Indian');
insert into employeedata() values(7,'Naveen',40000,'Washington DC','USA');
insert into employeedata() values(8,'Naveen',40000,'Newyork','USA');

select *from employeedata;
select count(*) from employeedata;
select count(id) from employeedata;
select min(salary) from employeedata;
select max(salary) from employeedata;
select avg(salary) from employeedata;
select count(id) from employeedata where salary>=50000;
select country,salary,count(id) from employeedata as e group by country,salary;
select country,salary,count(id) from employeedata as e where state='Newyork' group by country,salary;
select country,salary,count(id) from employeedata as e where state='Andhra pradesh' group by country,salary having count(id)>=1;