--Добавляем жанры

insert into genres(id,name)
values('1','Rap');

insert into genres(id,name)
values('2','Rock');

insert into genres(id,name)
values('3','Pop');

insert into genres(id,name)
values('4','Hip Hop');

insert into genres(id,name)
values('5','Джаз');

--Добавляем исполнителей

insert into executor(id,name_executor)
values('1','2Pac');

insert into executor(id,name_executor)
values('2','50Cent');

insert into executor(id,name_executor)
values('3','Elvis Presley');

insert into executor(id,name_executor)
values('4','The Beatles');

insert into executor(id,name_executor)
values('5','Michael Jackson');

insert into executor(id,name_executor)
values('6','Madonna');

insert into executor(id,name_executor)
values('7','Black Eyed Peas');

insert into executor(id,name_executor)
values('8','Gorillaz');

insert into executor(id,name_executor)
values('9','Louis Armstrong');

insert into executor(id,name_executor)
values('10','Miles Davis');

insert into executor(id,name_executor)
values('11','Drake');
--Добавляем альбомы

insert into album(id,title,year_of_issue)
values('1','All Eyez on Me','13.02.1996');

insert into album(id,title,year_of_issue)
values('2','Best Of','31.03.2017');

insert into album(id,title,year_of_issue)
values('3','Today','10.12.1975');

insert into album(id,title,year_of_issue)
values('4','Abbey Road','26.09.1969');

insert into album(id,title,year_of_issue)
values('5','Bad','31.08.1987');

insert into album(id,title,year_of_issue)
values('6','Erotica','20.10.1992');

insert into album(id,title,year_of_issue)
values('7','Elephunk','24.06.2003');

insert into album(id,title,year_of_issue)
values('8','Demon Days','11.05.2005');

insert into album(id,title,year_of_issue)
values('9','The Great Summit','7.09.1961');

insert into album(id,title,year_of_issue)
values('10','Kind of Blue','15.06.1959');

insert into album(id,title,year_of_issue)
values('11','Scorpion','29.06.2018');
--Добавляем треки

insert into track(id,title,duration,album_id)
values('1','Skandalouz','249','1');

insert into track(id,title,duration,album_id)
values('2','Got My Mind Made Up','313','1');

insert into track(id,title,duration,album_id)
values('3','In da Club','193','2');

insert into track(id,title,duration,album_id)
values('4','P.I.M.P','249','2');

insert into track(id,title,duration,album_id)
values('5','I Can Help','262','3');

insert into track(id,title,duration,album_id)
values('6','Woman Without LOve','230','3');

insert into track(id,title,duration,album_id)
values('7','Come Together','233','4');

insert into track(id,title,duration,album_id)
values('8','Something','319','4');

insert into track(id,title,duration,album_id)
values('9','Bad','301','5');

insert into track(id,title,duration,album_id)
values('10','i can halp it','222','5');

insert into track(id,title,duration,album_id)
values('11','Erotica','248','6');

insert into track(id,title,duration,album_id)
values('12','Fever','205','6');

insert into track(id,title,duration,album_id)
values('13','Hands Up','323','7');

insert into track(id,title,duration,album_id)
values('14','Shut Up','262','7');

insert into track(id,title,duration,album_id)
values('15','Last Living Souls','268','8');

insert into track(id,title,duration,album_id)
values('16','Kids With Guns','271','8');

insert into track(id,title,duration,album_id)
values('17','Duke is Place','315','9');

insert into track(id,title,duration,album_id)
values('18','Cottontail','194','9');

insert into track(id,title,duration,album_id)
values('19','All Blues','311','10');

insert into track(id,title,duration,album_id)
values('20','Freddie Freeloader','272','10');

insert into track(id,title,duration,album_id)
values('21','Gods plan','259','11');

insert into track(id,title,duration,album_id)
values('22','Non Stop','298','11');

--Добавляем сборники

insert into compilation(id,name,year_of_issue)
values('1','Rap Hip Hop','13.02.1996');

insert into compilation(id,name,year_of_issue)
values('2','Rock Pop','10.03.2011');

insert into compilation(id,name,year_of_issue)
values('3','Jazz Rap','11.04.1982');

insert into compilation(id,name,year_of_issue)
values('4','Rock Rap','14.05.2005');

insert into compilation(id,name,year_of_issue)
values('5','Hip Hop Jazz','15.06.2007');

insert into compilation(id,name,year_of_issue)
values('6','Jazz Rock','16.07.2020');

insert into compilation(id,name,year_of_issue)
values('7','Pop Rap','17.08.1982');

insert into compilation(id,name,year_of_issue)
values('8','Rock Hip Hop','19.09.2010');

insert into compilation(id,name,year_of_issue)
values('9','Rock Hip Hop','21.09.2020');

insert into compilation(id,name,year_of_issue)
values('10','Rock Hip Hop','23.04.2029');

--Заполняем таблицы связей

--Жанр-Исполнитель

insert into genres_executor(executor_id,genres_id)
values('1','1');

insert into genres_executor(executor_id,genres_id)
values('2','1');

insert into genres_executor(executor_id,genres_id)
values('3','2');

insert into genres_executor(executor_id,genres_id)
values('4','2');

insert into genres_executor(executor_id,genres_id)
values('5','3');

insert into genres_executor(executor_id,genres_id)
values('6','3');

insert into genres_executor(executor_id,genres_id)
values('7','4');

insert into genres_executor(executor_id,genres_id)
values('8','4');

insert into genres_executor(executor_id,genres_id)
values('9','5');

insert into genres_executor(executor_id,genres_id)
values('10','5');

insert into genres_executor(executor_id,genres_id)
values('11','1');


--Альбом-исполнитель

insert into album_executor(executor_id,album_id)
values('1','1');

insert into album_executor(executor_id,album_id)
values('2','2');

insert into album_executor(executor_id,album_id)
values('3','3');

insert into album_executor(executor_id,album_id)
values('4','4');

insert into album_executor(executor_id,album_id)
values('5','5');

insert into album_executor(executor_id,album_id)
values('6','6');

insert into album_executor(executor_id,album_id)
values('7','7');

insert into album_executor(executor_id,album_id)
values('8','8');

insert into album_executor(executor_id,album_id)
values('9','9');

insert into album_executor(executor_id,album_id)
values('10','10');

insert into album_executor(executor_id,album_id)
values('11','11');

--Сборник-треки

insert into compilation_track(compilation_id,track_id)
values('1','1');

insert into compilation_track(compilation_id,track_id)
values('2','3');

insert into compilation_track(compilation_id,track_id)
values('3','15');

insert into compilation_track(compilation_id,track_id)
values('4','11');

insert into compilation_track(compilation_id,track_id)
values('5','16');

insert into compilation_track(compilation_id,track_id)
values('6','12');

insert into compilation_track(compilation_id,track_id)
values('7','7');

insert into compilation_track(compilation_id,track_id)
values('8','9');

insert into compilation_track(compilation_id,track_id)
values('11','1');


