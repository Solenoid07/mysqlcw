CREATE DATABASE weekendDB;
USE weekendDB;
SHOW TABLES FROM weekendDB;

CREATE TABLE learners (
  student_id INT, 
  student_name VARCHAR(30), 
  city VARCHAR(30)
);

INSERT INTO learners VALUES 
(201, 'Aryan', 'Mumbai'), 
(202, 'Neha', 'Delhi');

SELECT * FROM learners;
