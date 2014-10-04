select p.name as name, r.result as winning_times
from events e, results r, players p
where e.event_id = r.event_id and r.player_id = p.player_id and e.name = '110m Hurdles Men' and e.olympic_id = 'SYD2000';
