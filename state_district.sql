
-- Create A Table 1

create table happy.state(
id int primary key auto_increment,
statename varchar(45)
);

SELECT * FROM happy.state;

insert into happy.state (id,statename) values(1,'AP');
insert into happy.state (id,statename) values(2,'TS');
insert into happy.state (id,statename) values(3,'TN');

-- Create A Table 2

create table happy.district(
disname varchar(45),
discode int,
stateid int,
constraint fk_district_state_id foreign key(stateid) references happy.state(id)
);

SELECT * FROM happy.district;

insert into happy.district(disname,discode,stateid) values('nellore', 503, 1);
insert into happy.district(disname,discode,stateid) values('tirupati', 521, 2);

-- Create A Joins Tables

SELECT * FROM happy.state AS s
INNER JOIN happy.district AS d on s.id = d.stateid;

SELECT * FROM happy.state AS s
LEFT JOIN happy.district AS d on s.id = d.stateid;

SELECT * FROM happy.state AS s
RIGHT JOIN happy.district AS d on s.id = d.stateid;

SELECT * FROM happy.state
CROSS JOIN happy.district;