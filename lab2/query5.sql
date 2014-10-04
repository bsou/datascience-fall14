create table players_per_country as
with T1 as (select country_id, count(player_id) as num_players
from players
group by  country_id)
select name as country_name, num_players
from T1 t, countries c
where t.country_id = c.country_id;
