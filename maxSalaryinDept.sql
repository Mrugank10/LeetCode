select b.name as department,a.name as employee,a.salary 
from employee a
left join department b
on a.departmentid=b.id
where (b.id,a.salary) in (select departmentid,max(salary) as salary from employee group by departmentid);
