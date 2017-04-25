
select avg(r.rating)
from ratings r
right join movies on r.movieid = movies.movieid;

select count(r.rating)
from ratings r
RIGHT JOIN movies on r.movieid = movies.movieid;

select count(DISTINCT m.title),g.genres
from movies m
FULL JOIN movie_genre mg on m.movieid = mg.movieid
Full join genre g on mg.genre_id = g.id
GROUP BY  g.genres;

SELECT avg(rating), userid
from ratings
GROUP BY rating, userid
ORDER BY avg(rating) desc;

SELECT  userid, count(rating)
from ratings
GROUP BY userid, rating
ORDER BY count(rating) DESC;

SELECT avg(rating), userid
from ratings
GROUP BY rating, userid
ORDER BY avg(rating) desc;

SELECT avg(rating), userid
FROM ratings
GROUP BY userid
HAVING COUNT (rating) >= 50
order by avg(rating) desc;

SELECT avg(rating), m.title
FROM ratings r
LEFT JOIN movies m on m.movieid = r.movieid
GROUP BY m.title
HAVING avg(rating) > 4
order by avg(rating) desc;

SELECT avg(r.rating), count(r.rating),g.genres
FROM movies m
FULL JOIN movie_genre mg on m.movieid = mg.movieid
Full join genre g on mg.genre_id = g.id
FULL JOIN  ratings r on r.movieid = m.movieid
GROUP BY g.genres
order by avg(rating) desc;

INSERT into actors (fname, lname, char_name, birthdate, movieid )
VALUES ('Karl11', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
       ('Karl12', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl13', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl14', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl15', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl16', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl17', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl18', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl19', 'Hungus1', 'Caleb Parker', '12-13-1980', 489),
      ('Karl111', 'Hungus1', 'Caleb Parker', '12-13-1980', 489);



INSERT into actors (fname, lname, char_name, birthdate, movieid )
VALUES ('Karl33', 'Hungus2', 'Caleb Parker', '12-13-1980', 193),
       ('Karl34', 'Hungus3', 'Caleb Parker', '12-13-1980', 193),
      ('Karl35', 'Hungus4', 'Caleb Parker', '12-13-1980', 193),
      ('Karl32', 'Hungus12', 'Caleb Parker', '12-13-1980', 193),
      ('Karl36', 'Hungus13', 'Caleb Parker', '12-13-1980', 193),
      ('Karl38', 'Hungus11', 'Caleb Parker', '12-13-1980', 193),
      ('Karl39', 'Hungus156', 'Caleb Parker', '12-13-1980', 193),
      ('Karl31', 'Hungus144', 'Caleb Parker', '12-13-1980', 193),
      ('Karl30', 'Hungus1444', 'Caleb Parker', '12-13-1980', 193),
      ('Karl333', 'Hungus144444', 'Caleb Parker', '12-13-1980', 193);

INSERT into actors (fname, lname, char_name, birthdate, movieid )
VALUES ('Karl43', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
       ('Karl44', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl45', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl56', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl62', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl78', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl89', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl91', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl320', 'Hungus1', 'Caleb Parker', '12-13-1980', 484),
      ('Karl33453', 'Hungus1', 'Caleb Parker', '12-13-1980', 484);

insert into actors (fname, lname, char_name, birthdate, movieid)
    values('bob', 'sagat1', 'tron', '12-11-1956', 193),
          ('bob2', 'sagat2', 'tron', '12-11-1956', 193),
          ('bob3', 'sagat3', 'tron', '12-11-1956', 193),
          ('bob4', 'sagat4', 'tron', '12-11-1956', 193),
          ('bob5', 'sagat5', 'tron', '12-11-1956', 193),
          ('bob6', 'sagat6', 'tron', '12-11-1956', 193),
          ('bob7', 'sagat7', 'tron', '12-11-1956', 193),
          ('bob8', 'sagat8', 'tron', '12-11-1956', 193),
          ('bob9', 'sagat9', 'tron', '12-11-1956', 193),
          ('bob11', 'sagat11', 'tron', '12-11-1956', 193);



UPDATE movies set mpaa ='R' where movieid = 193;
UPDATE movies set mpaa ='R' where movieid = 489;
UPDATE movies set mpaa ='PG' where movieid = 485;
UPDATE movies set mpaa ='PG-13' where movieid = 484;
UPDATE movies set mpaa ='R' where movieid = 192;

