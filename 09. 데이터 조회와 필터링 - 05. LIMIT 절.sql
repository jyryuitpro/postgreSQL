select film_id, title, release_year from film order by film_id;
-- 1,Academy Dinosaur,2006
-- 2,Ace Goldfinger,2006
-- 3,Adaptation Holes,2006
-- 4,Affair Prejudice,2006
-- 5,African Egg,2006
-- 6,Agent Truman,2006
-- 7,Airplane Sierra,2006
-- 8,Airport Pollock,2006
-- 9,Alabama Devil,2006
-- 10,Aladdin Calendar,2006

select film_id, title, release_year from film order by film_id limit 5;
-- 1,Academy Dinosaur,2006
-- 2,Ace Goldfinger,2006
-- 3,Adaptation Holes,2006
-- 4,Affair Prejudice,2006
-- 5,African Egg,2006

select film_id, title, release_year from film order by film_id limit 5 offset 3;
-- 4,Affair Prejudice,2006
-- 5,African Egg,2006
-- 6,Agent Truman,2006
-- 7,Airplane Sierra,2006
-- 8,Airport Pollock,2006

select film_id, title, rental_rate from film order by rental_rate desc limit 10;

select film_id, title, rental_rate from film order by rental_rate desc limit 100;

select film_id, title, rental_rate from film order by rental_rate limit 100;

select film_id, title, rental_rate from film order by rental_rate asc limit 100;

select film_id, title, rental_rate from film order by rental_rate desc limit 100 offset 5;
