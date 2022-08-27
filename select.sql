select id, title, year_of_issue from album
where year_of_issue >= '1.01.2018' and year_of_issue <= '31.12.2018';

select title, duration from track
order by duration DESC
limit 1

select title from track
where duration > '210';

select name from compilation
where year_of_issue >= '1.01.2018' and year_of_issue <= '31.12.2020';

select name_executor from executor
where not name_executor like '%% %%';

select title from track
where title like '%%My%%' or title like '%%Мой%%';

--Количество исполнителей в каждом жанре

select g.name, count(e.name_executor)  
from genres as g
join genres_executor as ge on g.id = ge.genres_id
join executor as e on ge.executor_id = e.id
group by g.name
order by count(e.name_executor) desc

--Количество треков в альбомах 2019-2020г

select t.title, a.year_of_issue
from album as a
left join track as t on t.album_id = a.id
where (a.year_of_issue >= '1.01.2019') and (a.year_of_issue <= '31.12.2020')

--Средняя продолжительность треков по альбому

select a.title, AVG(t.duration)
from album as a
join track as t on t.album_id = a.id
group by a.title
order by AVG(t.duration)

--Исполнители которые не выпускались в 2020г

select distinct e.name_executor
from executor e
left join album_executor ae on e.id = ae.executor_id
left join album as a on a.id = ae.album_id
where not a.year_of_issue >= '1.01.2020' and a.year_of_issue <= '31.12.2020'
order by e.name_executor

--Названия сборников, в которых присутствует конкретный исполнитель (2Pac)

select distinct c.name
from compilation as c
left join compilation_track as ct on c.id = ct.compilation_id
left join track as t on t.id = ct.track_id
left join album as a on a.id = t.album_id
left join album_executor as ae on ae.album_id = a.id
left join executor as e on e.id = ae.executor_id
where e.name_executor like '%2Pac%'
order by c.name

--Название альбомов, в которых присутствуют исполнители более 1 жанра

select a.title
from album as a
left join album_executor as ae on a.id = ae.album_id
left join executor as e on e.id = ae.executor_id
left join genres_executor as ge on e.id = ge.executor_id
left join genres as g on g.id = ge.genres_id
group by a.title
having count(distinct g.name) > 1
order by a.title

--Hаименование треков, которые не входят в сборники

select t.title
from track as t
left join compilation_track as ct on t.id = ct.track_id
where ct.track_id is null

--Исполнитель с самым коротким треком

select e.name_executor, t.duration
from track as t
left join album as a on a.id = t.album_id
left join album_executor as ae on ae.album_id = a.id
left join executor as e on e.id = ae.executor_id
group by e.name_executor, t.duration
having t.duration = (select min(duration) from track)
order by e.name_executor 

--Hазвание альбомов, содержащих наименьшее количество треков

select distinct a.title
from album as a
left join track as t on t.album_id = a.id
where t.album_id in (
    select album_id
    from track
    group by album_id
    having count(id) = (
        select count(id)
        from track
        group by album_id
        order by count
        limit 1))
order by a.title





