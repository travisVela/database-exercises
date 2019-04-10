use codeup_test_db;

select *
from albums;

update albums
set sales = sales * 10;

select *
from albums;

select name as 'Albums released before 1980', release_date
from albums
where release_date < 1980;

update albums
set release_date = release_date - 100
where release_date < 1980;

select name as 'Albums released before 1980', release_date
from albums
where release_date < 1980;



select artist as 'Michael Jackson Albums'
from albums
where artist = 'Michael Jackson';

update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select artist as 'Michael is now Peter', name
from albums
where artist = 'Peter Jackson';