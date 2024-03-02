select distinct num as consecutivenums from
(select id,num,
lag(num) over (order by id) as old,
lead(num) over (order by id) as new
from Logs
)a where num=new and new=old;
