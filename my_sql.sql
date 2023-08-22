create database private;
use private;
create table technology(
id int,
technology varchar(25) not null
);
drop table technology;
select * from technology;
insert into technology(id,technology)values
(1,"DS"),
(1,"PYTHONL"),
(1,"JAVA"),
(2,"DSQ"),
(2,"Data Analytic"),
(1, "CSS"),
(1,"C++");

select id from technology where technology in ("DS", "SQL", "Data Analytic","CSS");
select id 
from technology 
where technology="DS" 
and id in(
select id 
from technology
where technology="PYTHONL" 
and id in(
select id 
from technology
where technology = 'SQL'
)
);

SELECT id FROM TECHNOLOGY  GROUP BY ID;
SELECT ID FROM technology WHERE technology = 'DS';    
select id from technology where technology = 'SQL';
select * from technology;
select count(*) from technology;
   
show tables;
create table product_info(
product_id int,
product_name varchar(25)
);

insert into product_info(product_id,product_name) values
(1001,"life boy"),
(154, "Santoor"),
(1479, "Nirma soap");

select * from product_info;
select * from product_like_info;

create table product_like_info(
user_id int,
product_id int,
liked_data int
);
insert into product_like_info(user_id,product_id,liked_data)values(1005,69858,21/08/2023);
insert into product_like_info(user_id,product_id,liked_data)values(1694,659874,20/08/2023);

select * from product_info as  pi inner join product_like_info as pl
on pi.product_id=pl.product_id;

select * from product_info as  pi left join product_like_info as pl
on pi.product_id=pl.product_id;

select * from product_info as  pi right join product_like_info as pl
on pi.product_id=pl.product_id;


select * from product_like_info;
drop table product_like_info;

show tables;



