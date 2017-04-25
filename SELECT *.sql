SELECT *
from movies;

SELECT movieid, title
from movies
limit 10;

SELECT  movieid, title
FROM movies
where movieid=485;

SELECT movieid
from movies
where title like '%Made in America%';

SELECT movieid, title
FROM  movies
ORDER BY title ASC
limit 10;

SELECT title, movieid
FROM movies
WHERE title
LIKE '%(2002)%';

SELECT title, movieid
FROM movies
WHERE title
like '%Godfather,%'

select title, movieid, genres
FROM movies
WHERE genres = 'Comedy';

select m.title, m.movieid, g.genres
from movies m
inner join movie_genre mg on m.movieid = mg.movieid
inner join genre g on mg.genre_id = g.id
where g.genres = 'Comedy' and m.title like '%2000%';

select m.title, m.movieid, g.genres
from movies m
inner join movie_genre mg on m.movieid = mg.movieid
inner join genre g on mg.genre_id = g.id
where m.genres = 'Comedy' and m.title like '%Death%';

select m.title, m.movieid
from movies m
where  m.title like '%Super%' and m.title like '%2001%' or m.title like '%Super%' and m.title like'%2002%';

select m.title, ratings.rating
from  movies m
left join ratings on m.movieid = ratings.movieid
where m.title like '%Godfather,%';

select m.title, ratings.rating, ratings.timestamp
from  movies m
left join ratings on m.movieid = ratings.movieid
where m.title like '%Godfather,%'
order by ratings.timestamp desc ;

select m.title, links.imdbid
from movies m
inner join links on m.movieid = links.movieid
where m.genres ='Comedy' and m.title like '%2005%';

select m.title, ratings.rating
from  movies m
left join ratings on m.movieid = ratings.movieid
where ratings.rating is null;

select DISTINCT m.title, g.genres
from movies m
FULL JOIN movie_genre mg on m.movieid = mg.movieid
Full join genre g on mg.genre_id = g.id
where g.genres like'Fantasy%';




