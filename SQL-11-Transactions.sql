use sakila;
set autocommit=0;
select * from film;
update film set title = "DHOOM11" where film_id = 5; 
rollback; -- breakup

commit; -- marriage
