--2.1
select name, duration
from track t
where duration = (select max(duration) from track t2 );

--2.2
select name
from track t
where duration >= '00:03:30';

--2.3
select collection_name
from music_collection mc
where year between 2018 and 2020;

--2.4
select musician_name
from musician_performer mp
where musician_name not like '% %';

--2.5
select name
from track t
where name ilike '%мой%' or name ilike '%my%';

--3.1
select name_genre "Жанр", count(id_musician) "Количество исполнителей"
from music_genre mg
join genre_performer gp on gp.id_genre = mg.id_genre
group by name_genre;

--3.2
select year "Год", count(name) "Количество треков"
from track t
join album a on t.id_album = a.id_album
where year between 2019 and 2020
group by year;

--3.3
select album_name "Альбом", avg(duration) "Средняя продолжительность"
from track t
join album a on t.id_album = a.id_album
group by album_name
order by album_name;

--3.4
select musician_name "Исполнитель"
from musician_performer mp
join musician_album ma on mp.id_musician = ma.id_musician
join album a on ma.id_album = a.id_album
where musician_name not in (select musician_name
	from musician_performer mp
	join musician_album ma on mp.id_musician = ma.id_musician
	join album a on ma.id_album = a.id_album
	where year = 2020)
group by musician_name;

--3.5
select collection_name "Сборник"
from music_collection mc
join track_collection tc on mc.id_collection = tc.id_collection
join track t on tc.id_track = t.id_track
join album a on t.id_album = a.id_album
join musician_album ma on a.id_album = ma.id_album
join musician_performer mp on ma.id_musician = mp.id_musician
where musician_name = 'Prodigy';
