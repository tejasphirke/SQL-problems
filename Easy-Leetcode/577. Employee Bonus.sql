## Solution 1 
select e.name, b.bonus from employee e left join bonus b on e.empID = b.empID
where bonus < 1000 or bonus is null;

## Solution 2
SELECT e.name, b.bonus from
    Employee e left join bonus b 
        USING(empId)
    where 
        ifnull(b.bonus, 0) <1000;
