select a.title,l.name
  from film a join language l
  on a.language_id = l.language_id;


select * from film cross join language;


select *
from film_actor fa
join film f
on fa.film_id = f.film_id;


select *
from film_actor fa
left join film f
on fa.film_id = f.film_id;


select *
from film_actor fa
right join film f
on fa.film_id = f.film_id;
#
# select *
# from film_actor fa
# full outer join film f
# on fa.film_id = f.film_id;


-- No support of full join in MySQL


select *
from film cross join language;


select film.film_id, film_actor.actor_id, title
from film_actor

