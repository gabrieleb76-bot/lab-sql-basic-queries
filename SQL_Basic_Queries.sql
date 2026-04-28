USE sakila;

-- 1. Display all available tables in the Sakila database
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer
SELECT * 
FROM actor;

SELECT * 
FROM film;

SELECT * 
FROM customer;

-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language
SELECT name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year
FROM film;

-- 5.1 Determine the number of stores that the company has
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Determine the number of employees that the company has
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Determine how many films are available for rent
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

-- 5.3 Determine how many films have been rented
SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 BONUS: Retrieve all movies that have ARMAGEDDON in their title 
-- and have a duration longer than 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 BONUS: Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';