create table teammedals as
with T as (
select player_id, e.event_id as event_id, medal, result
from results r, events e
where r.event_id = e.event_id and is_team_event = 1)
select distinct country_id, event_id, medal, result
from players p, T t
where p.player_id = t.player_id
order by event_id;


