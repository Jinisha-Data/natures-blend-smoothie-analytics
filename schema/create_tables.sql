CREATE DATABASE nature_smoothie_shop;
USE nature_smoothie_shop;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE smoothies (
    smoothie_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    type VARCHAR(50),
    base_price DECIMAL(5,2),
    calories INT,
    protein DECIMAL(4,1),
    sugar DECIMAL(4,1)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    smoothie_id INT,
    order_date DATE,
    price_paid DECIMAL(5,2),
    payment_method VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (smoothie_id) REFERENCES smoothies(smoothie_id)
);

CREATE TABLE ingredients (
    ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    ingredient_name VARCHAR(100),
    unit VARCHAR(10),
    stock_qty DECIMAL(7,2),
    low_stock_threshold DECIMAL(7,2)
);

CREATE TABLE smoothie_ingredients (
    smoothie_id INT,
    ingredient_id INT,
    quantity_used DECIMAL(6,2),
    PRIMARY KEY (smoothie_id, ingredient_id),
    FOREIGN KEY (smoothie_id) REFERENCES smoothies(smoothie_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);
