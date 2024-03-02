delete from person where id in (select id from (select id,rank() over(partition by email order by id) as rank1 from person)
where rank1>1)

delete from Person where id not in (select min(id) id from Person group by email)
