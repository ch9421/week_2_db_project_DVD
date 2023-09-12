-- the most popular film being rented ,and the rental duration

SELECT f.TITLE, EXTRACT(DAY FROM(RETURN_DATE - RENTAL_DATE)) AS rent_duration_day, COUNT(P.CUSTOMER_ID) AS rent_amount FROM FILM F
	JOIN INVENTORY i ON f.FILM_ID = i.FILM_ID
	JOIN RENTAL r ON r.INVENTORY_ID = i.INVENTORY_ID
	LEFT JOIN PAYMENT p ON p.RENTAL_ID = r.RENTAL_ID
GROUP BY f.TITLE,
	rent_duration_day
ORDER BY rent_amount DESC