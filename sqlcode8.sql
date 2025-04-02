USE universityDB;

CREATE TABLE learners (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(30) NOT NULL,
  department VARCHAR(30) NOT NULL
);

INSERT INTO learners VALUES 
(2001, 'Aryan', 'IT'), 
(2002, 'Neha', 'IT'), 
(2003, 'Rohan', 'IT');

SELECT * FROM learners;

CREATE TABLE academics (
  student_id INT PRIMARY KEY,
  cgpa VARCHAR(5) NOT NULL
);

INSERT INTO academics VALUES 
(2001, '8.4'), 
(2003, '8.7'), 
(2006, '9.3');

SELECT * FROM academics;

USE universityDB;

SELECT * FROM learners CROSS JOIN academics;

SELECT * FROM learners 
INNER JOIN academics 
ON learners.student_id = academics.student_id;

SELECT * FROM learners 
NATURAL JOIN academics;

SELECT * FROM learners 
LEFT JOIN academics 
ON learners.student_id = academics.student_id;

SELECT * FROM learners 
RIGHT JOIN academics 
ON learners.student_id = academics.student_id;

SELECT * FROM learners 
FULL JOIN academics;

SELECT * FROM learners 
FULL OUTER JOIN academics 
ON learners.student_id = academics.student_id;
