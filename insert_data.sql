
INSERT INTO Person (national_id, first_name, last_name, phone_number, email) VALUES
('1234567890', 'John', 'S', '09123456789', 'john.s@e.com'),
('0987654321', 'Sarah', 'J', '09098765432', 'sarah.j@e.com'),
('1122334455', 'Michael', 'B', '09112233445', 'michael.b@e.com');

INSERT INTO Student (person_id, student_number, major) VALUES
(1, '9912', 'Computer Science'),
(3, '9956', 'Electrical Engineering');

INSERT INTO Professor (person_id, employee_number, department, academic_rank) VALUES
(2, '1234', 'Computer Science', 'Professor');


INSERT INTO FoodItem (food_name, description, base_price) VALUES
('Pizza', 'pizza with sauce', 25),
('Pasta', 'alfredo', 20),
('Salad', 'caesar', 15),
('Chicken', 'chicken with rice', 22);

INSERT INTO DailyMenu (menu_date, published_by) VALUES
('2024-05-20', 'Staff'),
('2024-05-21', 'Staff');


INSERT INTO MenuItem (menu_id, food_id, current_price) VALUES
(1, 1, 25),
(1, 2, 20),
(1, 3, 15),
(2, 1, 26), #price increased
(2, 4, 22);


INSERT INTO Food_Order (person_id, order_date, total_amount) VALUES
(1, '2024-05-20', 40), # John order
(2, '2024-05-20', 20), # Sarah order
(1, '2024-05-21', 44); # John  order2


INSERT INTO OrderDetail (order_id, menu_item_id, quantity, price_at_order) VALUES
(1, 1, 1, 25), # John ordered 1 Pizza
(1, 3, 1, 15), # John ordered 1 Salad
(2, 2, 1, 20), # Sarah ordered 1 Pasta
(3, 4, 2, 22); # John ordered 2 Chicken

