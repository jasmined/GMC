CREATE TABLE MOVIES (  
    id					INTEGER			NOT NULL,  
    title               VARCHAR(50)     NOT NULL,  
    description         VARCHAR(500),  
    runtime             INTEGER			NOT NULL,
    rating              VARCHAR(5)		NOT NULL, 
    rt_rating           INTEGER, 
    user_rating         DECIMAL(2,1), 
    release_year        INTEGER			NOT NULL,      
    PRIMARY KEY(id) 
)


CREATE TABLE GENRES (  
    movie_id			INTEGER			NOT NULL, 
    genre				VARCHAR(15)		NOT NULL,  
	PRIMARY KEY(movie_id, genre),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE	ON UPDATE CASCADE
)

CREATE TABLE LOCATIONS (  
    movie_id			INTEGER			NOT NULL,  
    location			VARCHAR(25)		NOT NULL, 
	PRIMARY KEY(movie_id, location),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE	ON UPDATE CASCADE
)

CREATE TABLE DIRECTORS (  
    movie_id			INTEGER			NOT NULL, 
    fname				VARCHAR(20),  
    lname				VARCHAR(20),  
	PRIMARY KEY(movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE	ON UPDATE CASCADE
)

CREATE TABLE ROLES (  
    movie_id			INTEGER			NOT NULL, 
    actor_id			INTEGER			NOT NULL,  
    fname				VARCHAR(25)		NOT NULL,  
    lname				VARCHAR(25)		NOT NULL,  
    role				VARCHAR(25)		NOT NULL,  
	PRIMARY KEY(actor_id, movie_id),
    FOREIGN KEY(movie_id) references MOVIES(id) ON DELETE CASCADE  ON UPDATE CASCADE
)
