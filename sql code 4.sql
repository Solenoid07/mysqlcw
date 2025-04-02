CREATE DATABASE org_data;

USE org_data;

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(30) NOT NULL UNIQUE,
    description TEXT NOT NULL
);

INSERT INTO categories VALUES (201, 'Home Decor', 'Contains all decorative wooden items');

SELECT * FROM categories;
DESC categories;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

DESC products;

DROP TABLE products;

INSERT INTO products VALUES (501, 'Teak Wood Table', NULL);

SELECT * FROM products;
SELECT * FROM categories;

DELETE FROM categories WHERE category_id = 200;

DROP TABLE categories;
