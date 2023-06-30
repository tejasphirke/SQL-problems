# Solution 1
select id, count(id ) as num from
(select requester_id as id from RequestAccepted
union all
select accepter_id as id from RequestAccepted)
requestaccepted
group by id
order by num desc
limit 1

# Solution 2
select id1 as id, count(id2) as num
from
(select requester_id as id1, accepter_id as id2 
from requestaccepted
union
select accepter_id as id1, requester_id as id2 
from requestaccepted) tmp1
group by id1 
order by num desc limit 1
