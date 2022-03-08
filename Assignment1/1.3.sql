SELECT  customer_list.ID, customer_list.name, customer_list.country, film_list.category
from customer_list
join rental
on customer_list.ID=rental.customer_id
join inventory
on rental.inventory_id=inventory.inventory_id
join film_list
on inventory.film_id=film_list.FID
where customer_list.country='India' and film_list.category='Sports';
