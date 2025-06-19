/*1)-----------------------------------------------------*/
SELECT f.title, a.address, c.city, co.country FROM film f 
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN store s on i.store_id = s.store_id 
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id
WHERE f.title like "academy dinosaur"
LIMIT 1
/*2)-----------------------------------------------------*/
SELECT f.title, f.length, c.name, l.name FROM film f 
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
INNER JOIN language l on l.language_id = f.language_id
WHERE f.length BETWEEN 90 and 120 
/*3)-----------------------------------------------------*/
SELECT s.first_name, s.last_name, a.address, c.city, co.country FROM staff s
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id
/*4)-----------------------------------------------------*/
/*5)-----------------------------------------------------*/

min("nombre de columna")max("tmb")
asc "asendente" y desc "desendente" (solo usando "order by")
"arranca%" "%entre%" "%termina"