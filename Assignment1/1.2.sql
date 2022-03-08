SELECT film.film_id,film.title,film.description, film.rental_duration,film.rental_rate, category.name
from film
join film_category
ON film.film_id=film_category.film_id
join category
on film_category.category_id=category.category_id
where category.name='Horror'
order by rental_rate DESC LIMIT 3; 