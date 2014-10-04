select name, country_id, birthdate 
from players 
where substring(name from length(name) for 1) = 'd' 
order by country_id asc, birthdate desc;
