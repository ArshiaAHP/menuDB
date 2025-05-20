CREATE TABLE Person (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    national_id VARCHAR(10) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(11),
    email VARCHAR(100)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT NOT NULL,
    student_number VARCHAR(10) UNIQUE NOT NULL,
    major VARCHAR(50) NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE Professor (
    professor_id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT NOT NULL,
    employee_number VARCHAR(10) UNIQUE NOT NULL,
    department VARCHAR(50) NOT NULL,
    academic_rank VARCHAR(50) NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE FoodItem (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(100) NOT NULL,
    description TEXT,
    base_price INT NOT NULL
);

CREATE TABLE DailyMenu (
    menu_id INT PRIMARY KEY AUTO_INCREMENT,
    menu_date DATE NOT NULL,
    published_by VARCHAR(100),
    UNIQUE(menu_date)
);

CREATE TABLE MenuItem (
    menu_item_id INT PRIMARY KEY AUTO_INCREMENT,
    menu_id INT NOT NULL,
    food_id INT NOT NULL,
    current_price INT NOT NULL,
    FOREIGN KEY (menu_id) REFERENCES DailyMenu(menu_id),
    FOREIGN KEY (food_id) REFERENCES FoodItem(food_id),
    UNIQUE(menu_id, food_id)
);

CREATE TABLE Food_Order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE OrderDetail (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    menu_item_id INT NOT NULL,
    quantity INT NOT NULL,
    price_at_order INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Food_Order(order_id),
    FOREIGN KEY (menu_item_id) REFERENCES MenuItem(menu_item_id)
);