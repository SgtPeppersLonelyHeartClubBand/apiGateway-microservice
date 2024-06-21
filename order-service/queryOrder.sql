CREATE DATABASE order_service_db;


CREATE TABLE orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    product VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
);
