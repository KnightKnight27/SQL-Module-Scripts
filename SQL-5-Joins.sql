SELECT * FROM sakila.film;

select * from film;


select a.title,l.name
  from film a join language l
  on a.language_id = l.language_id;
