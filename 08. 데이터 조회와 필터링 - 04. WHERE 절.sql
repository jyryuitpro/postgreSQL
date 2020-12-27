select last_name, first_name from customer where first_name = 'Jamie';

select last_name, first_name from customer where first_name = 'Jamie' and last_name = 'Rice';

select customer_id, amount, payment_date from payment where amount <= 1 or amount >= 8;
