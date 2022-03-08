#Find out the number of documentaries with deleted scenes.

SELECT count(*) AS DELETEED_SCENES FROM film
where special_features like "%Deleted Scenes%" and description like "%Documentary%";
