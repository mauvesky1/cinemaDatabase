DROP DATABASE IF EXISTS films;
CREATE DATABASE films;
USE films;

CREATE TABLE films(
    film_id INT AUTO_INCREMENT,
    film_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    rating TINYINT,
    screen_no. TINYINT NOT NULL,
    PRIMARY KEY(film_id)
);

CREATE TABLE customers(
    --customer id // name // address // new member boolean
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(222) NOT NULL,
    customer_address VARCHAR(222) NOT NULL,
    new_customer boolean,
    PRIMARY KEY(customer_id)
)

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT,
	date_booking DATETIME NOT NULL,
	fk_film_id INT,
    fk_customer_id INT,
	PRIMARY KEY(order_id),
	FOREIGN KEY(fk_film_id) REFERENCES films(film_id)
    FOREIGN KEY(fk_customer_id) REFERENCES customers(customer_id)
);

