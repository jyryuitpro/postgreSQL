select customer_id, payment_id, amount from payment where amount between 8 and 9;

select customer_id, payment_id, amount from payment where amount >= 8 and amount <= 9;

select customer_id, payment_id, amount from payment where amount not between 8 and 9;

select customer_id, payment_id, amount from payment where amount > 8 or amount < 9;

select customer_id, payment_id, amount, payment_date, cast(payment_date as date) from payment where cast(payment_date as date) between '2007-02-07' and '2007-02-15';

select customer_id, payment_id, amount, payment_date, to_char(payment_date, 'YYYY-MM-DD') from payment where to_char(payment_date, 'YYYY-MM-DD') between '2007-02-07' and '2007-02-15';
