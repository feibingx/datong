use apply;

drop table IF EXISTS amiin; 

create table amiin(
  id int not null primary key auto_increment,
  username varchar(32) unique not null,
  studentname varchar(32),
  passwd varchar(32) not null,
  school varchar(120),
  score varchar(2),
  feedback varchar(10),
  updatetime timestamp DEFAULT CURRENT_TIMESTAMP
);

insert into amiin(username,passwd,score)
values('111王之韡','111王之韡','A');