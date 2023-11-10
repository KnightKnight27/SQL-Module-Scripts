use sakila;

-- lect count(1) from film;
-- select * from film join language using (language_id);
-- PRINT All movies who have rental greater than the
--  global avg rental

-- 1 subproblem
-- global avg select avg(rental_rate) from film;
-- 2 supproblem
-- select title from film where rental_rate > select avg(rental_rate) from film;

-- select all the film who have greater rental rate
-- than the maximum rental rate of movies of language italian 

select title,rental_rate from film where rental_rate
 > (select avg(rental_rate) from film);
 -- select all the film who have greater rental rate
-- than the maximum rental rate of movies of language italian 
-- film language
-- join film language 
-- select * from film join language using language_id;
-- select  max(rental_rate) from film join language using language_id;
-- group by name having name = 'ITALIAN';

-- maximum rental rate of italian movies 


-- select * from film whre rental_rate > x;


use sakila;
-- a  italian 20
-- b.  italian 30
-- c krish  eng.  40
-- d. eng.  15
-- e jjk hindi 60
select name,MAX(rental_rate) from film join language using (language_id) group by name
having name ='Italian';
-- select all the film who have greater rental rate
-- than the maximum rental rate of movies of language italian 
-- find max rental of the italian
--  FIRST A JOIN IS DONE 
-- select * from film join language using (language_id);
-- MAXIMUM RENTAL OF ITALIAN 
-- select MAX(rental_rate) from film join language using (language_id) group by name
-- having name ='Italian';
select * from film;
SELECT TITLE,RENTAL_RATE FROM FILM WHERE RENTAL_RATE >=
(
	select MAX(rental_rate) from film join language using 
    (language_id) group by name
 having name ='Italian'
);


-- WE HAVE TO PRINT ALL THE MOVIES 
-- WHICH HAVE A RENTAL RATE MATCHING WITH ANY ENGLISH MOVIE 
-- A ENG 2  
-- B ENG 3 
-- C HINDI 2
-- D HINDI 5
-- E ITALIAN 3
-- F FRENCH 6
-- supproblem1
-- select {} from film join language using (language_id);

-- all rental rates of eng movie 
-- select rental_rate from film join language using (language_id)
-- where name = 'english';
 select distinct rental_rate from film join language using (language_id)
 where name = 'english';
-- x = 2 or x=5 or x=12
-- x in (2,5,12)
 select title from film where rental_rate in (
  select distinct rental_rate from film join language using (language_id)
 where name = 'english'
 );
 -- WE HAVE TO PRINT ALL THE MOVIES 
-- WHICH HAVE A RENTAL RATE greater than aNY ENGLISH MOVIE 
-- join
SELECT "Happy Deepawaliii🧨 , :D ";
select * from film where rental_rate,title in (

select rental_rate,title from film;
);

select rental_rate from film join language using 
(language_id) where name = 'english';

select title from film where rental_rate = any (

select rental_rate from film join language using 
(language_id) where name = 'english'
);

