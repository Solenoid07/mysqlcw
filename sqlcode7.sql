USE organizationDB;

SELECT * FROM employees;

SELECT dept_name, COUNT(dept_name) 
FROM employees 
WHERE dept_name IN ('HR', 'Finance') 
GROUP BY dept_name;

SELECT column_list 
FROM table_ref 
WHERE filter_condition 
GROUP BY column_list 
HAVING group_condition 
ORDER BY column_list;

SELECT dept_name, COUNT(dept_name) AS total_members 
FROM employees 
GROUP BY dept_name 
HAVING COUNT(dept_name) >= 3;

CREATE TABLE university (
  emp_id INT PRIMARY KEY, 
  emp_name VARCHAR(30) NOT NULL, 
  division VARCHAR(40) NOT NULL
);

INSERT INTO university VALUES 
(201, 'Rahul', 'Engineering'), 
(202, 'Priya', 'Management');

CREATE TABLE institute (
  emp_id INT PRIMARY KEY, 
  emp_name VARCHAR(30) NOT NULL, 
  branch VARCHAR(40) NOT NULL
);

INSERT INTO institute VALUES 
(201, 'Rahul', 'Bangalore'), 
(202, 'Priya', 'Hyderabad');

SELECT * FROM institute;
SELECT * FROM university;

SELECT emp_name AS AwardWinner 
FROM university 
WHERE emp_id = (SELECT emp_id FROM institute WHERE branch = 'Hyderabad');
