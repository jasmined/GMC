CREATE TABLE MOVIES (  
    id					INTEGER			NOT NULL,  
    title               VARCHAR(50)     NOT NULL,  
    description         VARCHAR(500),  
    runtime             INTEGER,  
    rating              INTEGER, 
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
    location    VARCHAR(25), 
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE 
)

CREATE TABLE DIRECTORS (  
    movie_id			INTEGER			NOT NULL, 
    fname       VARCHAR(20),  
    lname       VARCHAR(20),  
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