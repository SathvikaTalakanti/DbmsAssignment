SELECT count(*) AS Number_of_Movies
From actor
join film_actor
on actor.actor_id=film_actor.actor_id
where actor.first_name='SEAN' and actor.last_name='WILLIAMS';