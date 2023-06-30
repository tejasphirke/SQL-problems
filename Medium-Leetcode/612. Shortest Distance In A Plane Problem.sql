Write a query to find the shortest distance between these points rounded to 2 decimals.
| x  | y  |
|----|----|
| -1 | -1 |
| 0  | 0  |
| -1 | -2 |
The shortest distance is 1.00 from point (-1,-1) to (-1,2). So the output should be:

| shortest |
|----------|
| 1.00     |


# Solution
select round(sqrt(min((pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2)))), 2) as shortest
from point_2d p1
join point_2d p2 
on p1.x != p2.x or p1.y != p2.y
