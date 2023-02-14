create database nutrition;

use nutrition;

create table user(
    id bigint not null auto_increment,
    user_names varchar(100) not null,
    user_age bigint not null,
	user_dob date not null,
    user_height double not null,
    user_weight bigint not null,
    primary key (id)
    );
    
    create table day(
	  idDay date not null,
      user_name varchar(100) not null,
      user_id bigint not null,
      primary key (idDay),
      foreign key(user_id) references user(id)
    );
    
    create table meals(
    meals_num bigint not null auto_increment,
    calories bigint not null,
    fat bigint not null,
    carbohydrates bigint not null,
    fibra bigint not null,
    proten bigint,
    DAY_idDay date,
    primary key (meals_num),
    foreign key (DAY_idDay) references day (idDay)
);

select * from meals;


