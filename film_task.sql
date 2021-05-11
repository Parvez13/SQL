TODO: q1

TODO: q2

TODO: q3

TODO: q4
SELECT * from actor;
SELECT * from address

SELECT DISTINCT film.title from film 
INNER JOIN film_actor ON film_actor.film_id = film.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
INNER JOIN address ON address.address_id = actor.address_id
INNER JOIN city ON city.city_id = address.city_id
INNER JOIN country ON country.country_id = city.country_id
WHERE country.country = "India" limit 10;

TODO: q5

SELECT COUNT(*) 
FROM (((actor
INNER JOIN address ON actor.address_id = Address.address_id)
INNER JOIN city ON Address.city_id = City.city_id)
INNER JOIN country ON City.country_id = country.country_id)
WHERE country.country = 'UNITED STATES';-- 

TODO:  q6

SELECT language.language_id, language.name,film.release_year,COUNT(*) AS number_of_films
FROM language
INNER JOIN film ON film.language_id = language.language_id
WHERE film.release_year BETWEEN 2001 AND 2010 GROUP BY language.language_id;

TODO: q7
UPDATE film SET language_id = (SELECT language.language_id from language WHERE language.name = 'ENGLISH'  ) 
WHERE film.film_id = 17;

TODO: q8

SELECT film.film_id,film.title, film.release_year, film.rating from film 
WHERE release_year IN (2005,2015) AND rating= 'PG';

TODO: q9

SELECT  film.release_year,count(film.release_year) AS number_of_films from film
GROUP BY (film.release_year) ORDER BY COUNT(film.release_year) DESC ;

TODO: q10

SELECT film.release_year,count(film.release_year) AS number_of_films from film
GROUP BY(film.release_year) ORDER by count(film.release_year) ASC  limit 1;

TODO: q11

SELECT film.film_id,film.title,film.release_year,film.length from
film WHERE film.length = (SELECT MAX(film.length) ) AND film.release_year = '2014' order by film.length ASC;

TODO: q12

SELECT Category.category_id ,Category.name AS film_category,language.name AS language,film.rating
FROM film_category
INNER JOIN Category ON Category.category_id = film_category.category_id
INNER JOIN film ON film.film_id = film_category.film_id
INNER JOIN language ON language.language_id = film.language_id
WHERE category.name = 'SCI-FI' AND film.rating = 'NC-17';

TODO: q13
INSERT INTO city(city,country_id)
VALUES('Florence',(SELECT country_id FROM country WHERE country.country = 'Italy'));
UPDATE address INNER JOIN actor ON actor.address_id = address.address_id
SET address.address = "055,Piazzale Michelangelo",address.district = 'Rifredi',address.city_id
=(SELECT city_id FROM city WHERE city.city = "Florence"),address.postal_code = "50125" WHERE
actor.actor_id = 16:


TODO: q14

INSERT INTO film(title,Description,language_id,length,rental_duration,rental_rate,rating,replacement_cost,special_features,release_year)
VALUES("No Time to Die","Recruited to rescue a kidnapped scientist,globe-trotting spy James Bond finds himself 
hot on the trail of a mysterious villain,who's armed with a dangerous new technology ",
1,100,6,3.99,"PG-13",20.99,"Trailers,Deleted Scenes",2020)

SELECT * from film where title = 'No Time to Die'

TODO: q15

INSERT INTO film_category(category_id,film_id)
VALUES((SELECT category_id FROM category WHERE category.name = "Action"),(SELECT film_id FROM film WHERE film.title = "No Time to Die")),
((SELECT category_id FROM category WHERE category.name = "Classics"),(SELECT film_id FROM film WHERE film.title = "No Time to Die")),
((SELECT category_id FROM category WHERE category.name = "Drama"),(SELECT film_id FROM film WHERE film.title = "No Time to Die"))

TODO: q16

INSERT INTO 'film_actor'('actor_id','film_id')
VALUES((SELECT actor_id FROM actor WHERE actor.first_name = "PENELOPE" AND actor.last_name = 'GUINESS'),
(SELECT film_id FROM film WHERE film.title = 'No Time to Die')),
((SELECT actor_id FROM actor WHERE actor.first_name = 'NICK' AND actor.last_name = 'WAHLBERG'),
(SELECT film_id FROM film WHERE film.title = 'No Time to Die')),
((SELECT actor_id FROM actor WHERE actor.first_name = 'JOE' AND actor.last_name = 'SWANK'),
(SELECT film_id FROM film WHERE film.title = "No Time to Die"));

TODO: q17

TODO:  q18

SELECT actor_id, count(actor_id) from film_actor
GROUP BY actor_id
ORDER BY  COUNT(actor_id) desc LIMIT 5;

TODO: q19

DELETE FROM FILM_ACTOR WHERE FILM_ID = (SELECT FILM_ID FROM FILM WHERE FILM.TITLE = 'GRAIL FRANKENSTEIN') AND (SELECT ACTOR_ID FROM ACTOR WHERE
CONCAT(ACTOR.FIRST_NAME,' ', LAST_NAME) = 'JOHNNY LOLLOBRIGIDA')

TODO: q20

INSERT INTO FILM_CATEGORY(FILM_ID,CATEGORY_ID)
VALUES(402,5)
INSERT INTO FILM_CATEGORY(FILM_ID,CATEGORY_ID)
VALUES(402,7)

TODO: q21

SELECT film_actor.* from film_actor 
where film_id = 969

SELECT actor.* 
FROM actor 
WHERE FIRST_NAME LIKE "Dan%"
SELECT actor.* 
FROM actor 
WHERE FIRST_NAME LIKE "MAE%"
SELECT actor.* 
FROM actor 
WHERE FIRST_NAME LIKE "SCARLETT%"

SELECT actor_id 
FROM film_actor
WHERE film_id = 969

real sol
DELETE FROM film_actor WHERE film_id = (select film_id from film where film.title = "West lion")
INSERT INTO film_actor(actor_id, film_id)
VALUES
((SELECT actor_id FROM actor WHERE actor.first_name = "Dan" AND actor.last_name = "Torn"),(SELECT film_id FROM film WHERE film.title = "WEST LION")),
((SELECT actor_id FROM actor WHERE actor.first_name = "Mae" AND actor.last_name = "HOFFMAN"),(SELECT film_id FROM film WHERE film.title = "WEST LION")),
((SELECT actor_id FROM actor WHERE actor.first_name = "Scarlett" AND actor.last_name = "DAMON"),(SELECT film_id FROM film WHERE film.title = "WEST LION"))

TODO: q22

DELETE from film_category WHERE film_id = (select film_id from film where film.title = ' West lion')

INSERT INTO film_category(film_id, category_id)
VALUES
((SELECT film_id from film WHERE film.title = "West Lion"), (SELECT category_id FROM category where category.name = "classics")),
((SELECT film_id from film WHERE film.title = "West Lion"),(SELECT category_id FROM category where category.name = "Family")),
((SELECT film_id from film WHERE film.title = "West Lion"),(SELECT category_id FROM category where category.name = "Children"));

TODO: q23

select Count(*) from film_actor inner join film using(film_id)
where release_year = 2017

-- TODO: q24
use lco_films


SELECT COUNT(*) As Total_films
FROM film
inner join film_category on film.film_id = film_category.film_id 
inner join category on category.category_id = film_category.category_id
where category.name = 'SCI-FI' and film.release_year BETWEEN 2007 AND 20017

TODO: q25

SELECT Concat(actor.first_name, actor.last_name) AS FILM_ACTORS, City.city
FROM actor
INNER JOIN address ON address.address_id = actor.address_id
INNER JOIN city ON city.city_id = address.city_id
INNER JOIN film_actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id
WHERE Film.film_id = (SELECT film.film_id FROM film WHERE film.title = 'WESTWARD SEABISCUIT')

SELECT film.film_id from film where film.title = 'WESTWARD SEABISCUIT'

SELECT actor.actor_id from actor 
inner join film_actor ON actor.actor_id = film_actor.actor_id
where film_id = 970

TODO: q26

SELECT SUM(film.length)
FROM film
WHERE film.release_year = 2008

TODO: q27

SELECT film.title,film.release_year,language.name,
min(film.length) over()
FROM film
INNER JOIN language ON film.language_id = language.language_id

TODO: q28

SELECT film.release_year, COUNT(film.release_year) AS Total_films
FROM film
GROUP BY film.release_year
ORDER BY film.release_year

TODO: q29

SELECT film.release_year, COUNT(film.language_id) AS Total_films
FROM FILM
group by film.release_year

SELECT language.name,film.release_year, Count(film.language_id) AS Total_films 
from film
inner join language on language.language_id = film.language_id
group by film.release_year

TODO: q30

SELECT actor.actor_id ,CONCAT(actor.first_name, ' ', actor.last_name) AS Name,min(film_actor.actor)
FROM actor
inner join film_actor on film_actor.actor_id = actor.actor_id

select actor_id, count(actor_id) from film_actor 
group by actor_id 
order by count(actor_id)
