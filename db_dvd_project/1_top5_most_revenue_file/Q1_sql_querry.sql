-- the top 5 films that has the most revenue
select f.title, sum(p.amount) as total_revenue from film f
	inner join inventory i on f.film_id = i.film_id
	inner join rental r on r.inventory_id = i.inventory_id
	inner join payment p on p.rental_id = r.rental_id
group by f.title
order by total_revenue desc
limit 5;