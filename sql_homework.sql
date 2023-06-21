--1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Answer: 2

--2. How many payments were made between $3.99 and $5.99? 
Select COUNT(amount) as pay_between
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5,607 payments

--3. What film does the store have the most of? (search in inventory) 
SELECT COUNT(film_id) AS film_id_count, film_id
FROM inventory
GROUP BY film_id
ORDER BY film_id_count Desc;
--Answer: 72 films are tied at 8

--4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
--Answer: 0

--5. What store employee (get the id) sold the most rentals? 
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY staff_id;
--Answer: staff_id 1 had 8040

--6. How many different district names are there? 
SELECT COUNT(DISTINCT district)
FROM address;
--Answer: 378

--7. What film has the most actors in it? (use film_actor table and get film_id) 
SELECT film_id, COUNT(actor_id) AS num_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_of_actors DESC;
--Answer: film_id 508 - 15 actors

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT COUNT(last_name) AS last_name_end_es
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--Answer: 13

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount) AS count_amount, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY amount;
--Answer: 3 - .99, 2.99, 4.99

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
SELECT COUNT(rating) AS film_rating_count, rating
FROM film
GROUP BY rating;
--Answer: 5 and PG-13 has the most at 223





