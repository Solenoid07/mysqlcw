USE company_db;

SELECT * FROM employees;

SELECT department, COUNT(department) 
FROM employees 
WHERE department IN ('HR', 'Finance') 
GROUP BY department;

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

SELECT department, COUNT(department) AS dept_headcount
FROM employees
GROUP BY department
HAVING COUNT(department) >= 4;

CREATE TABLE vit_main (
    id INT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    faculty VARCHAR(30) NOT NULL
);

INSERT INTO vit_main VALUES 
(201, 'Rohan', 'CSE'), 
(202, 'Neha', 'ECE');

CREATE TABLE vit_regional (
    id INT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    faculty VARCHAR(30) NOT NULL
);

INSERT INTO vit_regional VALUES 
(301, 'Amit', 'EEE'), 
(302, 'Sneha', 'Mechanical');

SELECT * FROM vit_main;
SELECT * FROM vit_regional;

SELECT name AS "Star Performer" 
FROM vit_main 
WHERE id = (SELECT id FROM vit_regional WHERE faculty = 'CSE');
