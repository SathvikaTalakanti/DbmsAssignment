# Find out the number of R rated movies rented by “SUSAN WILSON”.

select count(*) as no_of_movies
from film_list
join inventory
on film_list.FID=inventory.film_id
join rental
on inventory.inventory_id=rental.inventory_id
join customer_list
on rental.customer_id=customer_list.ID
where film_list.rating='R' and customer_list.name='SUSAN WILSON';