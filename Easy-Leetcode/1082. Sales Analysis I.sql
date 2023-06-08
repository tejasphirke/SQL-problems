select distinct seller_id 
from Sales
group by seller_id
having sum(price)=
(Select max(price) as max_price
from sales
group by seller_id
order by max_price desc
limit 1)
