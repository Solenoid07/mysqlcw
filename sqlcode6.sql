CREATE TABLE employees (
    emp_id INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    age INT,
    CHECK (salary >= 250000 AND salary <= 500000)
);

ALTER TABLE employees
ADD CHECK (age >= 21);

CREATE TABLE employees_details (
    emp_id INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    age INT,
    city VARCHAR(255) DEFAULT 'Bengaluru'
);

DESC employees_details;

USE company_db;
SHOW TABLES FROM company_db;

SELECT * FROM staff;

SELECT * FROM staff WHERE first_name LIKE '_a_r%';

SELECT * FROM staff WHERE salary LIKE '9%';

CREATE VIEW admin_high_salary AS
SELECT * FROM staff 
WHERE department = 'HR' AND salary >= 120000 ORDER BY salary DESC;

SELECT * FROM admin_high_salary;
