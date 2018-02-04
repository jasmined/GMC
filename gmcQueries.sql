CREATE TABLE MOVIES (  
    id					INTEGER			NOT NULL,  
    title               VARCHAR(50)     NOT NULL,  
    description         VARCHAR(500),  
    runtime             INTEGER,  
    rating              VARCHAR(5), 
    rt_rating           INTEGER, 
    user_rating         INTEGER, 
    release_year        INTEGER,      
    PRIMARY KEY(id) 
)


CREATE TABLE GENRES (  
    movie_id			INTEGER			NOT NULL, 
    genre				VARCHAR(15)		NOT NULL,  
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE 
)

CREATE TABLE LOCATIONS (  
    movie_id			INTEGER			NOT NULL,  
    location			VARCHAR(25), 
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE 
)

CREATE TABLE DIRECTORS (  
    movie_id			INTEGER			NOT NULL, 
    fname				VARCHAR(20),  
    lname				VARCHAR(20),  
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE 
)

CREATE TABLE ROLES (  
    movie_id			INTEGER			NOT NULL, 
    actor_id			INTEGER			UNIQUE,  
    fname				VARCHAR(25),  
    lname				VARCHAR(25),  
    role				VARCHAR(25),  
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE  
)


--REM MOVIE 1 ========================================================

INSERT INTO 	MOVIES
VALUES			(5000, 'Get Out', 'It''s time for a young African-American to meet with his white girlfriend''s parents for a weekend in their secluded estate in the woods, but before long, the friendly and polite ambience will give way to a nightmare', 104, 'R', 99, 7.7, 2017);

INSERT INTO GENRES VALUES (5000, 'Horror');
INSERT INTO GENRES VALUES (5000, 'Mystery');
INSERT INTO GENRES VALUES (5000, 'Thriller');


INSERT INTO LOCATIONS VALUES (5000, 'Amazon Video');
INSERT INTO LOCATIONS VALUES (5000, 'Google Play');
INSERT INTO LOCATIONS VALUES (5000, 'YouTube');
INSERT INTO LOCATIONS VALUES (5000, 'HBO Go');

INSERT INTO DIRECTORS VALUES (5000, 'Jordan', 'Peele');

INSERT INTO ROLES VALUES (5000, 100, 'Daniel', 'Kaluuya', 'Chris Washington');
INSERT INTO ROLES VALUES (5000, 101, 'Allison', 'Williams', 'Rose Armitage');
INSERT INTO ROLES VALUES (5000, 102, 'Catherine', 'Keener', 'Missy Armitage');	
