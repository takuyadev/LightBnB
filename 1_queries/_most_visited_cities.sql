SELECT properties.city, COUNT(reservations.id) AS total_reservations FROM reservations
JOIN properties ON (properties.id=reservations.property_id)
GROUP BY properties.city
ORDER BY total_reservations DESC;