select film_id, title from film order by title fetch first row only;
select film_id, title from film order by title fetch first 1 row only;
-- 1,Academy Dinosaur


select film_id, title from film order by title fetch first 2 row only;
-- 1,Academy Dinosaur
-- 2,Ace Goldfinger

select film_id, title from film order by title offset 5 rows fetch first 5 row only;
-- offset 5 rows : 0 1 2 3 4 5