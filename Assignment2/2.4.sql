# Find out the top 3 rented category of movies by “PATRICIA JOHNSON”.

SELECT film_list.category FROM customer_list
join rental 
on customer_list.ID=rental.customer_id
join inventory
on rental.inventory_id=inventory.inventory_id
join film_list
on film_list.FID=inventory.film_id
where customer_list.name="PATRICIA JOHNSON"
GROUP BY film_list.category
ORDER BY COUNT(film_list.category) DESC limit 3;
