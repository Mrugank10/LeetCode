/* Write your PL/SQL query statement below */
select department,employee,salary from
(select b.name as department, a.name as employee, salary,dense_rank() over (partition by departmentid order by salary desc) as d_rank from
employee a
inner join department b
on a.departmentid=b.id)
where d_rank <=3;
