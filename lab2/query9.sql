with T as (
select distinct e.event_id as event_id, medal, result
from events e, results r
where e.event_id = r.event_id and name like '%Butterfly%' and medal != 'BRONZE'
), G as (
select event_id, result
from T
where medal = 'GOLD'
), S as (
select event_id, result
from T
where medal = 'SILVER')
select g.event_id as event_id, (s.result - g.result) as difference
from G g, S s
where g.event_id = s.event_id;
