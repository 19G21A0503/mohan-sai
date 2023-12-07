
-- Create A Table 1

create table happy.employee(
id int primary key auto_increment,
name varchar(40)not null ,
email varchar(15),
phonenumber int
)

SELECT * FROM happy.employee;

insert into happy.employee(name,email,phonenumber) values('mohan','m@gmmail.com', 1234567809);
insert into happy.employee(name,email,phonenumber) values('kala','k@gmmail.com', 1243576809);
insert into happy.employee(name,email,phonenumber) values('vasavi','v@gmmail.com', 1234567890);

-- Create A Table 2

create table happy.empaddress(
area varchar(20),
city varchar(20),
state varchar(15),
empid int,
constraint fk_empaddress_employee_id foreign key(empid) references happy.employee(id)
);

SELECT * FROM happy.empaddress;

insert into happy.empaddress(area,city,state,empid) values('Temple BusStop', 'Hyderabad', 'Telangana', 1);
insert into happy.empaddress(area,city,state,empid) values('Adharshnagar Colony', 'Hyderabad', 'Telangana', 2);

-- Create A Joins Tables

SELECT * FROM happy.employee AS e1
INNER JOIN happy.empaddress AS e2 ON e1.id = e2.empid;

SELECT * FROM happy.employee AS e1
LEFT JOIN happy.empaddress AS e2 ON e1.id = e2.empid;

SELECT * FROM happy.employee AS e1
RIGHT JOIN happy.empaddress AS e2 ON e1.id = e2.empid;

SELECT * FROM happy.employee
CROSS JOIN happy.empaddress;