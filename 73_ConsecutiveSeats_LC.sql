SELECT c1.seat_id
FROM cinemas as c1
JOIN cineams as c2
JOIN cinemas as c3
ON c1.seat_id = c2.seat_id + 1 || c1.seat_id = c3.seat_id - 1
WHERE c1.free = 1 and c2.free = 1 and c3.free = 1;
