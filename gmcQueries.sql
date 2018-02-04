--SQL Query 1: Computes a join of at least three tables
--Show all comedies from 2017 that are still in theaters

SELECT title AS "2017 comedy movies still in theaters"
FROM GENRES JOIN MOVIES ON movie_id = id JOIN LOCATIONS ON id = LOCATIONS.movie_id
WHERE genre = 'Comedy' AND release_year = 2017 AND location = 'Theaters'

--SQL Query 2: Uses nested queries with the ANY or ALL operator and uses a GROUP BY clause
--SQL Query 3: A correlated nested query
--SQL Query 4: Uses a FULL JOIN
--SQL Query 5: Uses nested queries with any of the set operations UNION, EXCEPT, or INTERSECT

--SQL Query 6: Create your  own non-trivial SQL query
--List all action movies from 2017 with a rating of at least 70% rating from Rotten Tomatoes

SELECT title AS 'Top Action Movies of 2017', rt_rating AS 'Rotten Tomatoes Score' 
FROM MOVIES JOIN GENRES ON id = movie_id
WHERE GENRES.genre = 'Action' AND MOVIES.rt_rating >= 70
ORDER BY rt_rating DESC

--SQL Query 7: Create your  own non-trivial SQL query
--SQL Query 8: Create your  own non-trivial SQL query
--SQL Query 9: Create your  own non-trivial SQL query
--SQL Query 10: Create your  own non-trivial SQL query
