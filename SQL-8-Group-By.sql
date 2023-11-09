use sakila;
select count(1) from film;
-- .0054 > .00098
--  a break till  10 : 34 pm 
use sakila;
select * from film;
select count(null) from film;
select count(*) from film;
-- film table and language table are connected via what key 
-- language_id is the reference_id 
-- IF I WANT TO PRINT FOR EACH MOVIE THE LANGUAGE OF IT ?? HOW TO DO IT ??
-- SOLVE IT USING JOINs 
-- write the query for it
select title,name from film join language using (language_id);
select name,count(*) from film join language using (language_id) group by name; 
select * from film join language using (language_id);
-- for each language print the number of movies
