--21
select a.maker, max(b.price)
from product a, pc b
where a.model=b.model
and a.type='pc'
group by a.maker
;
--22
select speed, avg(price)
from pc
where speed>600
group by speed
;
--23
select a.maker
from product a, pc b
where a.model=b.model 
and b.speed>=750
intersect
select a.maker
from product a, laptop c
where a.model=c.model 
and c.speed>=750
;
--24
select model from (select model, price from pc 
where price in (select max(price) from pc)
union
select model, price from laptop 
where price in (select max(price) from laptop)
union
select model, price from printer 
where price in (select max(price) from printer)) X
where price >= all (
                   select max(price) from pc 
                   union 
                   select max(price) from laptop 
                   union 
                   select max(price) from printer
                   )
;
--25
select distinct maker from product where maker in 
(select maker from product
where type = 'Printer')
and model in 
(
select model from pc where ram=
(select min(ram) from pc)

group by speed, model
having speed = 
(select max(speed) from pc where ram=
(select min(ram) from pc))
)

;
