select max(a.num) as num
from (
    select num, count(*)
    from mynumbers
    group by num
    having count(*)=1
) a
