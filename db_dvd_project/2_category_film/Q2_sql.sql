-- Q2the category having the highest inventory of films, and the amount of films in that category

SELECT f.TITLE, c.NAME AS category_name, COUNT(1) AS file_amount FROM FILM f
	JOIN FILM_CATEGORY fc ON f.FILM_ID = fc.FILM_ID
	JOIN category c ON c.CATEGORY_ID = fc.CATEGORY_ID
	JOIN inventory i ON i.FILM_ID = fc.FILM_ID
	JOIN rental r ON r.INVENTORY_ID = i.INVENTORY_ID
GROUP BY f.TITLE, c.NAME
ORDER BY file_amount DESC