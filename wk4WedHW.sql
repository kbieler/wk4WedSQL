-- 1. Q:  How many actors are there with the last name 'Wahlberg'?
select count(last_name)
from actor 
where last_name = 'Wahlberg';
--1. A:  2


-- 2. Q:  How many payments were made between $3.99 and $5.99?
select count(payment_id)
from payment 
where amount > 3.99 and amount < 5.99;
-- 2. A:  3,412


-- 3. Q:  What film does the store have the most of? (search inventory)
select count(film_id), film_id
from inventory 
group by film_id 
order by count(film_id) desc;
-- 3. A:  film id #200


-- 4. Q:  How many customers have the last name 'William'?
select count(last_name)
from customer 
where last_name = 'William';
select * from customer;
-- 4. A:  0


-- 5. Q:  What store employee (get the id) sold the most rentals?
select * from rental;
select count(rental_id), staff_id
from rental 
group by staff_id 
order by count(rental_id) desc;
-- 5. A:  staff id #1


-- 6. Q:  How many different district names are there?

-- 6. A:  ???


-- 7. Q:  What film has the most actors in it? (use film_actor table and get film_id)
select * from film_actor;
select count(actor_id), film_id
from film_actor 
group by film_id 
order by count(actor_id) desc;
-- 7. A:  film id #508


-- 8. Q:  From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select * from customer;
select count(last_name), store_id
from customer 
where last_name like '%es'
group by store_id;
-- 8. A:  13 


-- 9. How many payment amounts had a number of rentals above 250 for customers with ids between
-- 380 and 430? (use group by and having > 250)
select * from payment;
select customer_id, count(amount) 
from payment
where customer_id >= 380 and customer_id <= 430
group by customer_id
having count(rental_id) > 250;
-- A:  ???


-- 10. Q:  Within the film table, how many rating categories are there? 
--     And what rating has the most movies total?
select count(rating), rating
from film 
group by rating
order by count(rating) desc;
-- 10. A:  5 rating categories; PG-13

