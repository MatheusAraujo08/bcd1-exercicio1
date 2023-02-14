create database projetinho;
use projetinho;


create table user(
id bigint not null auto_increment,
user_name varchar(45) not null,
user_age bigint not null,
user_dob datetime not null default now(),
user_height double not null,
user_weight bigint not null,
primary key(id)
);



create table day(
id bigint not null auto_increment,
day date not null,
user_fk bigint not null,
primary key(id),
foreign key(user_fk) references user(id)
);
drop table day;

create table meals(
id bigint not null auto_increment,
calories bigint not null,
fat int,
carbohydrates int not null,
fibra int,
protein int,
day_fk bigint not null,
primary key(id),
foreign key(day_fk) references day(id)
);

drop table meals;
insert into user(user_name,user_age,user_height,user_weight,user_dob) values
('RUBENS MC',35,1.7,71, '2023-02-13 19:55:00');

drop table meals;
insert into user(user_name,user_age,user_height,user_weight,user_dob) values
('CAIAO BRIDGESTONE',35,1.7,71, '2023-02-13 19:55:00');

drop table meals;
insert into user(user_name,user_age,user_height,user_weight,user_dob) values
('ATI THE CRIA',35,1.7,71, '2023-02-13 19:55:00');

drop table meals;
insert into user(user_name,user_age,user_height,user_weight,user_dob) values
('YAGONCIO',35,1.7,71, '2023-02-13 19:55:00');

select * from user;

