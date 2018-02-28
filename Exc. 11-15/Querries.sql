--11
select avg(speed) from pc
;
--12
select avg(speed) from laptop where price > 1000
;
--13
select avg(speed) 
from pc b, product a 
where a.model=b.model 
and a.maker = 'a'
;
--14
select distinct maker, type 
from product 
where maker in
(
select maker 
from product 
group by maker 
having count(distinct type)=1 
and count(model)>1
)
;
--15
select distinct hd
from pc
group by hd
having count(hd)>1
;
