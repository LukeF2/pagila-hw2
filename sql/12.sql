/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT title
FROM film
CROSS JOIN unnest(special_features) as feature
WHERE feature IN ('Behind the Scenes', 'Trailers')
GROUP BY title
HAVING COUNT(Distinct feature) = 2
ORDER BY title;
