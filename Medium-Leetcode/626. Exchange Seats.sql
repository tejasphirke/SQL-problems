### Solution 1 using a modulo operation 
select case
    when id % 2 = 0 then id - 1
    when id % 2 = 1 and id != (select max(id) from seat) then id + 1
    else id
    end as id,
    student
from seat
order by id

### Solution 2 using row_number
select row_number() over() id, student from Seat
order by if(id % 2 = 0, id-1, id+1);
