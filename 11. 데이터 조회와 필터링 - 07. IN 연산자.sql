select customer_id, rental_id, return_date
from rental
where customer_id in (1, 2) -- 1 or 2
order by return_date desc;

select customer_id, rental_id, return_date
from rental
where customer_id = 1 or customer_id = 2 -- 1 or 2
order by return_date desc;

select customer_id, rental_id, return_date
from rental
where customer_id not in (1, 2) -- 1과 2를 제외한 나머지 전부
order by return_date desc; -- null을 가장 큰 값으로 판단

select customer_id, rental_id, return_date
from rental
where customer_id <> 1 and customer_id <> 2 -- 1 or 2
order by return_date desc;

-- 서브쿼리

select customer_id from rental where cast(return_date as date) = '2005-05-27';
select first_name, last_name from customer where customer_id in (select customer_id from rental where cast(return_date as date) = '2005-05-27');

