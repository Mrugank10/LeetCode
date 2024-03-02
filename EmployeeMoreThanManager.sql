/* Write your PL/SQL query statement below */
select a.name as employee from Employee a
inner join employee b
on a.managerid=b.id
where a.salary>b.salary;
