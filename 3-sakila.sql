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
GROUP BY f.rating
/*7)-----------------------------------------------------*/
SELECT count(f.title) as peliculas, c.name FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category c on fc.category_id = c.category_id
GROUP BY c.name
/*8)-----------------------------------------------------*/


min("nombre de columna")max("tmb")
asc "asendente" y desc "desendente" (solo usando "order by")
"arranca%" "%entre%" "%termina"