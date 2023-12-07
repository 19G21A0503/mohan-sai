create table happy.teacher(
id int primary key auto_increment,
teachername varchar(25),
subject varchar(15)
);

select * from happy.teacher;

insert into happy.teacher (teachername,subject) values('Ravi','Physics');
insert into happy.teacher (teachername,subject) values('Rambabu','Maths');
insert into happy.teacher (teachername,subject) values('Jameer','Hindi');
insert into happy.teacher (teachername,subject) values('Ashok','Social Studies');

create table happy.student(
studentname varchar(25),
rollno varchar(10),
class varchar(10),
classincharge int,
foreign key(classincharge) references teacher(id)
);

select *from  happy.student;

insert into  happy.student (studentname,rollno,class,classincharge) values('Dhahul','19G21A04I6','10th Class',3);
insert into  happy.student (studentname,rollno,class,classincharge) values('Javeed','19G21A04J0','9th Class',2);
insert into  happy.student (studentname,rollno,class,classincharge) values('Mathin','19G21A04J3','6th Class',4);
insert into  happy.student (studentname,rollno,class,classincharge) values('Imran','19G21A04I9','10th Class',3);
insert into  happy.student (studentname,rollno,class,classincharge) values('Nizam','19G21A04J7','8th Class',1);
insert into  happy.student (studentname,rollno,class,classincharge) values('Ali','19G21A04k1','9th Class',2);
insert into  happy.student (studentname,rollno,class,classincharge) values('Soheb','19G21A04k4','7th Class',null);



select *from happy.teacher as tea
inner join happy.student as stu on tea.id = stu.classincharge;

select *from happy.teacher as tea
right join happy.student as stu on tea.id = stu.classincharge;

select *from happy.teacher as tea
left join happy.student as stu on tea.id = stu.classincharge;

select *from happy.teacher
cross join happy.student