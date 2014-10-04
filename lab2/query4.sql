with T as (select count(medal) as medal_count, country_id 
from totalmedals
group by country_id)
select t.country_id, ((medal_count*1.0)/population) as med_per_person
from T t, countries c
where t.country_id = c.country_id
order by med_per_person asc limit 5;
