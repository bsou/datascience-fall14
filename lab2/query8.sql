with T as (
select r.event_id as reventid, medal, result 
from events e, results r 
where e.event_id = r.event_id and is_team_event = 0 and medal = 'GOLD'
order by reventid)
select reventid
from T
group by reventid
having count(medal) > 1;
