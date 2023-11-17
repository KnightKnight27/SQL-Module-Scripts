use sakila;
create index kartik_title_idx on film(title,release_year);

explain analyze select * from students where title = 'DHOOM';

