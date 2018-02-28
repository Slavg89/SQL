--6
select distinct p.maker, l.speed
from product p, laptop l
where p.model=l.model
and l.hd >= 10
;
--7
select b.model, b.price
from pc b 
join product a 
on a.model=b.model 
where a.maker='b'
union 
select c.model, c.price
from laptop c 
join product a 
on a.model=c.model
where a.maker='b' 
union  
select d.model, d.price 
from printer d 
join product a 
on a.model=d.model
where a.maker='b'
;
--8
select a.maker
from product a
where a.type='pc'

except

select d.maker
from product d
where d.type = 'laptop'
;
--9
select distinct a.maker
from product a, pc b
where a.model=b.model
and b.speed >= 450
;
--10
select model, price
from printer
where price in (select max(price) from printer)
;
