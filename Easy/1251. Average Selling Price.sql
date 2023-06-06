select distinct p.product_id, round(sum(price * units)/sum(units),2) as average_price
from Prices p 
join UnitsSold u on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date
group by p.product_id
order by p.product_id
