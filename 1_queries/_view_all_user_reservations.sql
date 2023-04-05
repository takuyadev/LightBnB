SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, AVG(property_reviews.rating) FROM reservations
JOIN properties ON (properties.id=reservations.property_id)
JOIN property_reviews ON (property_reviews.reservation_id=reservations.id OR property_reviews.property_id=properties.id)
WHERE reservations.guest_id IN (
  SELECT id FROM users 
  WHERE users.email='tristanjacobs@gmail.com'
)
GROUP BY reservations.id, properties.title, properties.cost_per_night, reservations.start_date
LIMIT 10;



SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date FROM reservations
JOIN properties ON (properties.id=reservations.property_id)
WHERE guest_id IN (
  SELECT id FROM users 
  WHERE users.email='tristanjacobs@gmail.com'
)
LIMIT 10;

