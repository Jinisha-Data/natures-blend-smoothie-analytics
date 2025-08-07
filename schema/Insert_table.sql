INSERT INTO customers (name, gender, age, city) VALUES
('Jasmine Patel', 'Female', 28, 'Calgary'),
('Mike Nguyen', 'Male', 35, 'Calgary'),
('Alicia Gomez', 'Female', 22, 'Toronto'),
('Daniel Lee', 'Male', 30, 'Vancouver'),
('Sana Khan', 'Female', 40, 'Calgary');

INSERT INTO smoothies (name, type, base_price, calories, protein, sugar) VALUES
('Green Detox', 'detox', 6.99, 120, 3.2, 4.5),
('Berry Boost', 'vegan', 7.49, 180, 2.1, 9.0),
('Tropical Power', 'protein', 8.25, 220, 12.5, 6.5),
('Almond Delight', 'vegan', 7.10, 200, 4.8, 5.0),
('Keto Fuel', 'protein', 8.99, 150, 10.0, 1.2);

INSERT INTO orders (customer_id, smoothie_id, order_date, price_paid, payment_method) VALUES
(1, 1, '2025-08-01', 6.99, 'Card'),
(2, 2, '2025-08-02', 7.49, 'Cash'),
(3, 3, '2025-08-03', 8.25, 'Card'),
(1, 4, '2025-08-04', 7.10, 'Card'),
(4, 5, '2025-08-05', 8.99, 'Card');

INSERT INTO ingredients (ingredient_name, unit, stock_qty, low_stock_threshold) VALUES
('Spinach', 'g', 5000, 1000),
('Blueberries', 'g', 3000, 800),
('Almond Milk', 'ml', 10000, 2000),
('Banana', 'g', 4000, 1000),
('Protein Powder', 'g', 2000, 500),
('Chia Seeds', 'g', 1500, 300);

INSERT INTO smoothie_ingredients (smoothie_id, ingredient_id, quantity_used) VALUES
(1, 1, 100), 
(1, 3, 200), 
(2, 2, 150), 
(2, 3, 200),
(2, 4, 100), 
(3, 4, 120),
(3, 5, 40), 
(3, 6, 10), 
(4, 3, 180),
(4, 4, 100),
(5, 5, 50),
(5, 6, 20);
