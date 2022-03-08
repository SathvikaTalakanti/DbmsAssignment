 # Find out the number of sci-fi movies rented by the store managed by Jon Stephens.
 
 SELECT count(*) as no_of_sci_fi_movies
 from film_list
 join inventory
 on film_list.FID=inventory.film_id
 join rental
 on inventory.inventory_id=rental.rental_id
 join staff_list
 on rental.staff_id=staff_list.ID
  where film_list.category='sci-fi' and staff_list.name='Jon Stephens';
 