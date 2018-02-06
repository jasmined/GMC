--  -----------------------------------------------------------------------------------
--  -----------------------------------------------------------------------------------
--	PART C
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 1
--	Purpose:	Retrieves movie titles
--	Expected:	A table displaying the title of 2017 movies that are still in theaters

	SELECT title AS "2017 comedy movies still in theaters"
	FROM GENRES JOIN MOVIES ON movie_id = id JOIN LOCATIONS ON id = LOCATIONS.movie_id
	WHERE genre = 'Comedy' AND release_year = 2017 AND location = 'Theaters'

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 2
--	Purpose:	Retrieves the release year, title, and the user ratings for movies
--	Expected:	A table displaying movies with a user rating above an 8 (out of 10)
--				and grouped according to the release year, the title, and the user
--				rating the movie received

	SELECT release_year, title, user_rating
	FROM MOVIES
	WHERE user_rating > ALL
			(SELECT user_rating FROM MOVIES WHERE user_rating < 8)
			GROUP BY release_year, title, user_rating

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 3
--	Purpose:	Retrieves all attributes from the MOVIES relation.
--	Expected:	A table displaying movies that received a user_rating higher than the
--				average user rating of all the movies (average: 7.713333)

	SELECT * 
	FROM MOVIES
	WHERE user_rating > (SELECT AVG(user_rating) FROM MOVIES);

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 4
--	Purpose:	Retrieves the title of a movie and the director's name
--	Expected:	A table displaying the titles of movies and the full name of directed
--				each one

	SELECT M.title AS Movies, D.fname AS "First", D.lname AS "Last"
	FROM MOVIES AS M FULL JOIN DIRECTORS AS D ON M.id = D.movie_id;

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 5
--	Purpose:	Retrieves the title of a movie, its user rating, and whether the rating
--				is considered a high or low rating
--	Expected:	A table displaying all movies and an indication that the movie is highly
--				(ratings >= 8) or lowly rated (ratings < 8)

	SELECT title AS "Movie", user_rating AS "User Rating", 'High' AS "High/Low Rating"
	FROM MOVIES
	WHERE user_rating >= 8
	UNION
		(SELECT title, user_rating, 'Low'
		 FROM MOVIES
		 WHERE user_rating < 8 )

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 6
--	Purpose:	Retrieves the title of a movie and its Rotten Tomatoes score.
--	Expected:	A table displaying the top action movies (Rotten Tomatoes score >= 70%) 
--				of 2017. Ordering set to display the highest rated movies at the top

	SELECT title AS 'Top Action Movies of 2017', rt_rating AS 'Rotten Tomatoes Score' 
	FROM MOVIES JOIN GENRES ON id = movie_id
	WHERE GENRES.genre = 'Action' AND MOVIES.rt_rating >= 70 AND MOVIES.release_year = 2017
	ORDER BY rt_rating DESC

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 7
--	Purpose:	Retrieves the title of a movie, the locations of where the movie can be
--				viewed, and its ratings from both users and Rotten Tomatoes
--	Expected:	A table displaying "critically-acclaimed movies" (ratings above the
--				average for both user ratings (7.713333) and Rotten Tomatoes ratings
--				(75%)

	SELECT M.title AS "Movie", L.location AS "Where to watch", M.user_rating 
				   AS "User Rating", M.rt_rating AS "Rotten Tomatoes Score"
	FROM MOVIES AS M JOIN LOCATIONS AS L ON M.id = L.movie_id
	WHERE user_rating >= (SELECT AVG(user_rating) FROM MOVIES) 
							AND 
							rt_rating > = (SELECT AVG(rt_rating) FROM MOVIES);

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 8
--	Purpose:	Retrieves the full details of a movie
--	Expected:	A table displaying the highest-rated movie of 2017

	SELECT *
	FROM MOVIES
	WHERE user_rating = (SELECT MAX(user_rating) FROM MOVIES WHERE release_year = 2017);

--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 9
--	Purpose:	Retrieves the full details of movies
--	Expected:	A table displaying PG-13 movies that were released before 2017

	SELECT *
	FROM (
		 SELECT * FROM MOVIES WHERE rating = 'PG-13'
		 ) as pg13movies
	WHERE release_year < 2017
	
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------
--	QUERY 10
--	Purpose:	Retrieves the full details of movies
--	Expected:	A table displaying movies that aren't comedies

	SELECT *
	FROM MOVIES AS M
	WHERE NOT EXISTS(SELECT * FROM GENRES AS G WHERE G.movie_id = M.id AND G.genre = 'Comedy')

--	-----------------------------------------------------------------------------------
--	END OF SCRIPT (February 5, 2018)
