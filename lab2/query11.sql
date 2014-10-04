with T as (
select country_id, count(name) as num_players
from players
where extract(year from birthdate) = 1975
group by country_id)
select c.name as country_name, coalesce(num_players, 0) as num_players_born_1975
from countries c left outer join T t on c.country_id = t.country_id;
