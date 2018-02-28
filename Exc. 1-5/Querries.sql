--1
select
model, speed, hd
from pc
where price<500
;
--2
select distinct maker 
from product 
where type = 'printer'
;
--3
select model, ram, screen
from laptop
where price>1000
;
--4
select * 
from printer 
where color = 'y'
;
--5
select
model, speed, hd
from pc
where
cd='12x' and price<600
or
cd='24x' and price<600
