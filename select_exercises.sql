use codeup_test_db;

select name as 'Pink Floyd Albums'
from albums
where artist = 'Pink Floyd';

select release_date as 'Sgt. Pepper''s release date'
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre as 'Nevermind genre'
from albums
where name = 'Nevermind';

select name as 'Albums released in the 90s'
from albums
where release_date between '1990-1-1' and '1999-12-31';

select name, sales as 'Certified Sales'
from albums
where sales < 20;

select name as 'Rock Albums'
from albums
where genre = 'Rock';