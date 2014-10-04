select count(name)
from players p
where substring(p.name from 1 for 1) = 'A' 
or substring(p.name from 1 for 1) = 'E'
or substring(p.name from 1 for 1) = 'I'
or substring(p.name from 1 for 1) = 'O'
or substring(p.name from 1 for 1) = 'U';
