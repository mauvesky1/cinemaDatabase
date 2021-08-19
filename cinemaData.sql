INSERT INTO films(
film_type, price, rating, screen_no)
VALUES('Horror', 5.1, 2, 2),
('Sci-fi', 5.2, 4, 2),
('Romance', 5.2, 1, 1);

INSERT INTO customers(
    customer_name, customer_address
)
VALUES("Bob", "742 EverGreen Terrace"),
("Sally", "Caprica Drive"),
("Angelika", "Pickles Lane");

INSERT INTO orders(
    date_booking, fk_film_id, fk_customer_id
)
VALUES("'1000-01-01 00:00:00'", 1, 1),
("'1000-01-01 00:00:00'", 1, 1),
("'1000-01-01 00:00:00'", 1, 1);

