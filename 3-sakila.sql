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
SELECT f.title, r.rental_date, r.return_date FROM film f
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
LIMIT 1
/*5)-----------------------------------------------------*/
SELECT * FROM film f
----------------------------------------------------------
INNER JOIN film_category fc on f.film_id = fc.film_id 
INNER JOIN category c on fc.category_id = c.category_id

INNER JOIN language l on f.last_update = l.last_update

INNER JOIN film_actor fa on f.film_id = fa.film_id
INNER JOIN actor a on fa.actor_id = a.actor_id

INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN film_text ft on i.film_id = ft.film_id
----------------------------------------------------------
INNER JOIN rental r on i.inventory_id = r.inventory_id
INNER JOIN payment p on r.rental_id = p.rental_id
INNER JOIN staff s on p.staff_id = s.staff_id
INNER JOIN store on s.store_id = store.store_id
----------------------------------------------------------
INNER JOIN customer cu on store.store_id = cu.store_id
INNER JOIN address ad on cu.address_id = ad.address_id
INNER JOIN city ci on ad.city_id = ci.city_id
INNER JOIN country co on ci.country_id = co.country_id
----------------------------------------------------------
/*6)-----------------------------------------------------*/
SELECT count(f.title) as peliculas, f.rating FROM film f
GROUP by f.rating
/*7)-----------------------------------------------------*/
SELECT c.name, count(f.film_id) as peliculas FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
GROUP by c.name ORDER by peliculas DESC
/*8)-----------------------------------------------------*/
SELECT a.first_name, a.last_name, count(a.actor_id) as actores FROM film f
INNER JOIN film_actor fa on f.film_id = fa.film_id
INNER JOIN actor a on fa.actor_id = a.actor_id
GROUP by f.film_id ORDER by actores DESC
/*9)-----------------------------------------------------*/
SELECT a.address, c.city, co.country, count(i.film_id) as cantidad FROM inventory i
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id
GROUP by s.store_id ORDER by cantidad DESC
/*10)-----------------------------------------------------*/
SELECT a.address, c.city, co.country, count(DISTINCT i.film_id) as cantidad FROM inventory i
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country co on c.country_id = co.country_id
GROUP by s.store_id ORDER by cantidad DESC
/*11)-----------------------------------------------------*/
SELECT c.name, count(f.film_id) as peliculas, avg(rental_duration * rental_rate) as promedio FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
GROUP by c.name ORDER by peliculas DESC
/*12)-----------------------------------------------------*/
SELECT f.title, (f.rental_rate * f.rental_duration) 
as costo_total,f.rental_duration, f.rental_rate, r.rental_date, r.return_date FROM film f
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
WHERE f.title like "alabama devil"
GROUP by f.title
/*13)-----------------------------------------------------*/
SELECT f.title, f.length, c.name FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id 
INNER JOIN category c on fc.category_id = c.category_id
ORDER by length DESC
/*14)-----------------------------------------------------*/
SELECT f.title, count(fa.actor_id) as cantidad FROM film f
INNER JOIN film_actor fa on f.film_id = fa.film_id
WHERE f.title like "w%"
GROUP by f.title
HAVING cantidad >= 5 
ORDER by cantidad ASC
/*15)-----------------------------------------------------*/
SELECT sum(p.amount) as pagos, c.first_name, c.last_name FROM payment p
INNER JOIN customer c on p.customer_id = c.customer_id
GROUP by c.customer_id ORDER by pagos DESC
/*16)-----------------------------------------------------*/
SELECT f.title, f.length, a.first_name, a.last_name FROM film f 
INNER JOIN film_actor fa on f.film_id = fa.film_id
INNER JOIN actor a on fa.actor_id = a.actor_id
WHERE f.length <= 60GROUP by f.title ORDER by length ASC 
/*17)-----------------------------------------------------*/
SELECT c.last_name, ci.city, co.country, a.address, r.rental_date, r.return_date, sum(p.amount) as pagos FROM customer c
INNER JOIN address a on c.address_id = a.address_id
INNER JOIN city ci on a.city_id = ci.city_id
INNER JOIN country co on ci.country_id = co.country_id
INNER JOIN rental r on c.customer_id = r.customer_id
INNER JOIN payment p on c.customer_id = p.customer_id
GROUP by c.last_name ORDER by pagos ASC
/*18)-----------------------------------------------------*/
INSERT INTO actor(actor_id, first_name, last_name, last_update)
VALUES(201,"JOQUIN", "PIRILLO","2020-12-23 07:12:29")
/*19)-----------------------------------------------------*/

/*20)-----------------------------------------------------*/

/*21)-----------------------------------------------------*/


min("nombre de columna")max("tmb")
asc "asendente" y desc "desendente" (solo usando "order by")
"arranca%" "%entre%" "%termina"