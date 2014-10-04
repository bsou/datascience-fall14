with T as (
select count(medal) as medal_count, player_id
from results r, events e
where r.event_id = e.event_id and olympic_id = 'SYD2000' and medal = 'GOLD'
group by player_id), U as (
select extract(year from birthdate) as birthyear, t.player_id as player_id, medal_count
from T t, players p
where t.player_id = p.player_id)
select birthyear, count(player_id) as num_players, sum(medal_count) as num_gold_medals
from U
group by birthyear;
