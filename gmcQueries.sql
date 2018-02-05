--REM
--DONE
--SQL Query 1: Computes a join of at least three tables
--Show all comedies from 2017 that are still in theaters

SELECT title AS "2017 comedy movies still in theaters"
FROM GENRES JOIN MOVIES ON movie_id = id JOIN LOCATIONS ON id = LOCATIONS.movie_id
WHERE genre = 'Comedy' AND release_year = 2017 AND location = 'Theaters'

--DONE
--SQL Query 2: Uses nested queries with the ANY or ALL operator and uses a GROUP BY clause

--SELECT M.title, release_year
--FROM MOVIES AS M
--WHERE user_rating >= ALL (SELECT user_rating FROM MOVIES WHERE release_year = 2016) AND release_year = 2016
--GROUP BY release_year;

--SELECT M.title, release_year
--FROM MOVIES AS M
--WHERE user_rating >= ALL (SELECT user_rating, release_year FROM MOVIES) AND release_year = 2016
--GROUP BY release_year;

--SELECT title
--FROM MOVIES JOIN GENRES ON id = movie_id
--WHERE GENRES.genre = 'Comedy'

Select release_year, title, user_rating
From Movies
Where user_rating > ALL
 (Select user_rating From Movies where user_rating < 8)
 Group by release_year, title, user_rating


--DONE
--SQL Query 3: A correlated nested query

SELECT *
FROM MOVIES AS M1
WHERE M1.user_rating > (SELECT AVG(user_rating) FROM MOVIES);

--DONE
--SQL Query 4: Uses a FULL JOIN
SELECT MOVIES.title AS Movies, DIRECTORS.fname AS "First", DIRECTORS.lname AS "Last"
FROM MOVIES FULL JOIN DIRECTORS ON MOVIES.id = DIRECTORS.movie_id;

--DONE
--SQL Query 5: Uses nested queries with any of the set operations UNION, EXCEPT, or INTERSECT

Select title, user_rating, 'High rating'
From Movies
Where user_rating >= 8
UNION
	(Select title, user_rating, 'Low rating'
	From Movies
	Where user_rating < 8 )


--DONE
--SQL Query 6: Create your  own non-trivial SQL query
--List all action movies from 2017 with a rating of at least 70% rating from Rotten Tomatoes

SELECT title AS 'Top Action Movies of 2017', rt_rating AS 'Rotten Tomatoes Score' 
FROM MOVIES JOIN GENRES ON id = movie_id
WHERE GENRES.genre = 'Action' AND MOVIES.rt_rating >= 70
ORDER BY rt_rating DESC

--DONE
--SQL Query 7: Create your  own non-trivial SQL query
SELECT M.title, L.location, M.user_rating, M.rt_rating
FROM MOVIES AS M JOIN LOCATIONS AS L ON M.id = L.movie_id
WHERE user_rating >= (SELECT AVG(user_rating) FROM MOVIES) 
						AND 
						rt_rating > = (SELECT AVG(rt_rating) FROM MOVIES);


--DONE
--SQL Query 8: Create your  own non-trivial SQL query
SELECT *
FROM MOVIES
WHERE user_rating = (SELECT MAX(user_rating) FROM MOVIES WHERE release_year = 2017);

--DONE
--SQL Query 9: Create your  own non-trivial SQL query

SELECT *
FROM (
	SELECT * FROM MOVIES WHERE rating = 'PG-13') as pg13Movies
WHERE release_year < 2017
	
--DONE
--SQL Query 10: Create your  own non-trivial SQL query
SELECT *
FROM MOVIES AS M
WHERE NOT EXISTS(SELECT * FROM GENRES AS G WHERE G.movie_id = M.id AND G.genre = 'Comedy')
