SELECT properties.id, properties.title, properties.cost_per_night, ROUND(AVG(rating),0) AS average_rating FROM property_reviews as reviews
JOIN properties ON (properties.id=reviews.property_id)
WHERE properties.city='Vancouver'
GROUP BY properties.id, properties.title, properties.cost_per_night
ORDER BY cost_per_night ASC
LIMIT 10;