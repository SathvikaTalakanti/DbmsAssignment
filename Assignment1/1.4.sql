SELECT customer_list.ID, customer_list.name AS customer_name, customer_list.country, actor_info.first_name,actor_info.last_name
from customer_list
join rental
on customer_list.ID=rental.customer_id
join inventory
on rental.inventory_id= inventory.inventory_id
join film_actor
on inventory.film_id=film_actor.film_id
join actor_info
on film_actor.actor_id=actor_info.actor_id
where customer_list.country='Canada' and (actor_info.first_name='NICK' and actor_info.last_name='WAHLBERG');