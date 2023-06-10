SELECT t2.id 
FROM weather t1, weather t2 
WHERE DATEDIFF(t2.recordDate, t1.recordDate) = 1 AND t2.Temperature > t1.Temperature;
