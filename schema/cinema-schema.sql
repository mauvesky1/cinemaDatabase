DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE films(
    film_id INT AUTO_INCREMENT,
    film_type VARCHAR(40) NOT NULL,
    price DECIMAL(10,2),
    rating INT,
    screen_no INT,
    PRIMARY KEY(film_id)
);

CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(222) NOT NULL,
    customer_address VARCHAR(222) NOT NULL,
    PRIMARY KEY(customer_id)
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT,
	date_booking DATETIME NOT NULL,
	fk_film_id INT,
    fk_customer_id INT,
	PRIMARY KEY(order_id),
	FOREIGN KEY(fk_film_id) REFERENCES films(film_id),
    FOREIGN KEY(fk_customer_id) REFERENCES customers(customer_id)
);