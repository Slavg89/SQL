--16
select distinct a.model, b.model, a.speed, a.ram
from pc a, (select model, speed, ram from pc) b
where a.speed=b.speed
and a.ram=b.ram
and a.model>b.model
;
--17
select distinct a.type, a.model, b.speed
from product a join laptop b on a.model=b.model
where b.speed < any (select distinct min(speed) from pc)
;
--18
select distinct a.maker, b.price
from printer b join product a 
on a.model=b.model
where b.price = (select min(price) from printer where color ='y')
and color='y'
;
--19
select maker, avg(screen)
from product a, laptop b
where a.model=b.model
group by maker
;
--20
select maker, count(model)
from product
where type='pc'
group by maker
having count(model)>=3
;
