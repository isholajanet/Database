-- Write a query in SQL to find the name and the year of the movies. --
use movie;
select mov_title, mov_year 
from movie;

-- Write a query in SQL to find the year when the movie American Beauty was released --
select mov_year
from movie
where mov_title = 'American Beauty';

-- Write a query in SQL to which was released in the year 1999 --
select mov_title
from movie
where mov_year = 1999;

-- Write a query in SQL to find the movies which was released before 1998 --
select mov_title
from movie
where mov_year < 1998;

-- Write a query in SQL to return the name of all reviewers and name of movies together in a single list --
select mov_title
from reviewer
join movie;

-- Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating --
select distinct rev_name
from rating
join reviewer
where rev_stars > 6;

-- Write a query in SQL to find the titles of all movies that have no ratings --
select distinct num_o_ratings, mov_title
from movie
join rating
where num_o_ratings is null;

-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a null values --
select mov_title, dir_fname, dir_lname
from movie
join director
where mov_title = 'Eyes wide shut';

-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a null value --
select distinct rev_name, num_o_ratings
from reviewer
join rating
where num_o_ratings is null;



