create schema hello;
use hello

create table hello.propertytype(
id int,
type varchar(20),
description varchar(50)
);


alter table hello.propertytype
modify id int primary key;

insert into hello.propertytype(id,type,description) values(1,'house','kk boyes pg');
insert into hello.propertytype(id,type,description) values(2,'land','ms pg'),(3,'villa','pk pg');



select*from hello.propertytype;

create table  hello.property(
id int primary key auto_increment,
propertytypeid int,
name varchar(15),
dimensions varchar (10),
constraint fk_property_propertytype foreign key (propertytypeid) references propertytype(id)
);


insert into hello.property (propertytypeid,name,dimensions) values (1,'house1','25a*21a');
insert into hello.property (propertytypeid,name,dimensions) values (1,'house2','45a*81a');
insert into hello.property (propertytypeid,name,dimensions) values (1,'house3','255*71a');
insert into hello.property (propertytypeid,name,dimensions) values (2,'land1','4acer');
insert into hello.property (propertytypeid,name,dimensions) values (2,'land2','2acer');
insert into hello.property (propertytypeid,name,dimensions) values (3,'villa1','2875*71');


select*from hello.property;

select*from hello.property,hello.mearge,hello.address1 as t1
inner join hello.property as t2 on t1.id = t2.propertytypeid;


create table hello.address1(
id int primary key auto_increment,
street varchar(20),
landmark varchar(15),
state varchar(15),
country varchar(10)
);

insert into hello.address (street,landmark,state,country) values ('s.v.k.p street','policestation','a.p','india');
insert into hello.address (street,landmark,state,country) values ('1st street','babai hotel','telengana','india');
insert into hello.address (street,landmark,state,country) values ('4th street','metrostation','telengana','india');


select*from hello.address;


create table hello.mearge(
id int,
propertyid int,
addressid int,
constraint fk_mearge_property foreign key (propertyid) references hello.property(id),
constraint fk_mearge_address foreign key (addressid) references hello.address(id)
);

insert into hello.mearge (propertyid,addressid) values (1,1),(2,1),(1,2);

select * from hello.mearge;