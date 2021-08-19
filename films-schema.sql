DROP DATABASE IF EXISTS films;
CREATE DATABASE films;
USE films;

CREATE TABLE films(
    film_id INT AUTO_INCREMENT,
    film_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
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