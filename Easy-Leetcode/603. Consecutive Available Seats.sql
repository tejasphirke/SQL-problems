SELECT 
     DISTINCT(a.seat_id) 
FROM cinema a 
INNER JOIN cinema b 
ON abs(a.seat_id - b.seat_id) = 1 
WHERE a.free = 1 and b.free = 1 
ORDER BY a.seat_id
