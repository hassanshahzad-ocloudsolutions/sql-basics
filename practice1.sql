-- CREATE DATABASE postgres;

--SELECT * FROM people;

--SELECT * FROM people WHERE p_age>30;

--SELECT * FROM people WHERE p_Age<30 AND p_height>5.3;

--UPDATE people SET p_height=5.9 WHERE p_id=1;

--SELECT * FROM people ORDER BY p_id;

--DELETE FROM people WHERE p_id=2;

--SELECT * FROM people ORDER BY p_id;

--ALTER TABLE people ADD COLUMN p_weight FLOAT DEFAULT 0.0;

--ALTER TABLE people RENAME TO persons;

--SELECT * FROM persons;

--ALTER TABLE persons ALTER COLUMN p_name TYPE VARCHAR(40); 

--ALTER TABLE persons RENAME p_name TO name; 

--ALTER TABLE persons RENAME name to p_name;

--SELECT * FROM persons;

--ALTER TABLE persons DROP COLUMN p_weight;

--SELECT * FROM persons;

--CREATE TABLE EMPLOYEE(id INT, name VARCHAR(20));

-- SELECT * FROM employee;

--DROP TABLE EMPLOYEE;

-- select * from employees;

--CREATE TABLE employee(id INTEGER PRIMARY KEY, 
-- 					  name VARCHAR(30),
--					  age INTEGER,
--					  dept VARCHAR(30),
--					  experience FLOAT,
--					  location TEXT);

-- Select * from employee;

-- drop table employee;

/*
CREATE TABLE employee(id SERIAL PRIMARY KEY, 
 					  name VARCHAR(30),
					  age INTEGER,
					  dept VARCHAR(30),
					  experience FLOAT,
					  location TEXT);
*/

/*
INSERT INTO employee (name, age, dept, experience, location) VALUES
('Ali Khan', 25, 'IT', 2, 'Karachi'),
('Sara Malik', 28, 'Finance', 5, 'Lahore'),
('Bilal Ahmed', 32, 'HR', 7, 'Islamabad'),
('Ayesha Noor', 26, 'Marketing', 3, 'Karachi'),
('Usman Tariq', 35, 'IT', 10, 'Lahore'),
('Fatima Javed', 30, 'Finance', 6, 'Islamabad'),
('Hassan Raza', 24, 'Sales', 2, 'Karachi'),
('Noor Fatima', 27, 'IT', 4, 'Lahore'),
('Ahmed Ali', 33, 'HR', 8, 'Islamabad'),
('Zara Hussain', 29, 'Marketing', 5, 'Lahore'),

('Omar Siddiqui', 31, 'Finance', 7, 'Karachi'),
('Maryam Saeed', 23, 'Sales', 1, 'Lahore'),
('Daniyal Khan', 28, 'IT', 5, 'Islamabad'),
('Laiba Aslam', 26, 'Finance', 3, 'Karachi'),
('Adnan Ali', 34, 'HR', 9, 'Lahore'),
('Hina Qureshi', 27, 'Marketing', 4, 'Islamabad'),
('Sami Ullah', 29, 'Sales', 6, 'Karachi'),
('Areeba Nadeem', 25, 'IT', 3, 'Lahore'),
('Tariq Mehmood', 38, 'Finance', 12, 'Islamabad'),
('Eman Shah', 30, 'Marketing', 7, 'Karachi'),

('Shahid Iqbal', 36, 'Sales', 10, 'Lahore'),
('Hafsa Aziz', 24, 'IT', 1, 'Islamabad'),
('Zain Rafiq', 32, 'Finance', 8, 'Karachi'),
('Mahnoor Tariq', 26, 'Marketing', 3, 'Lahore'),
('Rizwan Haider', 29, 'Sales', 5, 'Islamabad'),
('Iqra Rehman', 31, 'HR', 7, 'Karachi'),
('Waqas Butt', 27, 'Finance', 4, 'Lahore'),
('Komal Naseer', 28, 'Marketing', 5, 'Islamabad'),
('Noman Akhtar', 33, 'Sales', 8, 'Karachi'),
('Bushra Asif', 25, 'IT', 2, 'Lahore'),

('Imran Khan', 40, 'Finance', 15, 'Islamabad'),
('Esha Khalid', 23, 'Marketing', 1, 'Karachi'),
('Hamza Ali', 35, 'Sales', 11, 'Lahore'),
('Nida Faisal', 29, 'HR', 6, 'Islamabad'),
('Owais Sheikh', 37, 'IT', 12, 'Karachi'),
('Arisha Khan', 28, 'Finance', 5, 'Lahore'),
('Fahad Mustafa', 26, 'Sales', 3, 'Islamabad'),
('Iqbal Hussain', 31, 'Marketing', 6, 'Karachi'),
('Sadia Rauf', 24, 'IT', 1, 'Lahore'),
('Amir Qureshi', 34, 'Finance', 9, 'Islamabad'),

('Amina Malik', 30, 'HR', 7, 'Karachi'),
('Suleman Riaz', 29, 'Marketing', 5, 'Lahore'),
('Tooba Naveed', 27, 'Sales', 4, 'Islamabad'),
('Murtaza Abbas', 33, 'Finance', 8, 'Karachi'),
('Sana Farooq', 25, 'IT', 2, 'Lahore'),
('Shahbaz Ali', 36, 'HR', 11, 'Islamabad'),
('Tania Shah', 28, 'Marketing', 4, 'Karachi'),
('Usama Rehman', 31, 'Sales', 7, 'Lahore'),
('Areej Iqbal', 26, 'Finance', 3, 'Islamabad'),
('Zeeshan Rauf', 32, 'IT', 8, 'Karachi'),

('Farah Jamil', 24, 'Marketing', 2, 'Lahore'),
('Kashan Arif', 29, 'Sales', 5, 'Islamabad'),
('Maira Asad', 27, 'Finance', 3, 'Karachi'),
('Jawad Khan', 35, 'IT', 10, 'Lahore'),
('Nimra Adeel', 28, 'HR', 5, 'Islamabad'),
('Shahid Rehman', 31, 'Finance', 7, 'Karachi'),
('Saad Qureshi', 26, 'Sales', 3, 'Lahore'),
('Anam Raza', 23, 'Marketing', 1, 'Islamabad'),
('Waleed Hassan', 30, 'IT', 6, 'Karachi'),
('Sobia Malik', 33, 'Finance', 9, 'Lahore'),

('Hassan Khan', 38, 'Sales', 12, 'Islamabad'),
('Maryam Anwar', 29, 'HR', 6, 'Karachi'),
('Faris Ahmed', 27, 'Finance', 4, 'Lahore'),
('Hira Saeed', 25, 'Marketing', 2, 'Islamabad'),
('Adil Rafiq', 34, 'IT', 9, 'Karachi'),
('Nashit Ali', 32, 'Finance', 8, 'Lahore'),
('Sana Javed', 26, 'HR', 3, 'Islamabad'),
('Rauf Khan', 35, 'Marketing', 10, 'Karachi'),
('Yasir Mehmood', 31, 'Sales', 7, 'Lahore'),
('Lubna Tariq', 24, 'Finance', 2, 'Islamabad'),

('Huda Ali', 29, 'IT', 4, 'Karachi'),
('Shan Ahmed', 33, 'Finance', 9, 'Lahore'),
('Uzma Rauf', 27, 'Sales', 3, 'Islamabad'),
('Junaid Malik', 36, 'HR', 11, 'Karachi'),
('Iqra Noor', 25, 'Marketing', 2, 'Lahore'),
('Rehan Abbas', 30, 'Finance', 6, 'Islamabad'),
('Nida Zafar', 28, 'IT', 5, 'Karachi'),
('Taha Qureshi', 29, 'Sales', 5, 'Lahore'),
('Hassan Abbas', 34, 'Finance', 9, 'Islamabad'),
('Rida Aslam', 26, 'Marketing', 3, 'Karachi'),

('Samiya Ahmed', 32, 'Sales', 8, 'Lahore'),
('Kamran Iqbal', 27, 'IT', 4, 'Islamabad'),
('Fizza Tariq', 25, 'Finance', 2, 'Karachi'),
('Shahzaib Khan', 29, 'Marketing', 6, 'Lahore'),
('Maham Arif', 31, 'HR', 7, 'Islamabad'),
('Ali Raza', 23, 'Sales', 1, 'Karachi'),
('Zoya Khan', 28, 'Finance', 5, 'Lahore'),
('Talha Javed', 30, 'IT', 6, 'Islamabad'),
('Aiman Malik', 25, 'Marketing', 2, 'Karachi'),
('Haris Mehmood', 35, 'Sales', 10, 'Lahore'); */


-- SELECT * FROM employee LIMIT 10;

-- SELECT name FROM employee WHERE location = 'Lahore'

-- ALTER TABLE employee ADD COLUMN salary INTEGER DEFAULT 0;

-- SELECT * FROM EMPLOYEE;

-- select distinct dept FROM employee;

/*
UPDATE employee 
SET salary = CASE 
	WHEN dept = 'IT' THEN 70000 + (experience * 3000)
    WHEN dept = 'Finance' THEN 65000 + (experience * 2800)
    WHEN dept = 'HR' THEN 60000 + (experience * 2500)
    WHEN dept = 'Marketing' THEN 58000 + (experience * 2200)
    WHEN dept = 'Sales' THEN 55000 + (experience * 2000)
	END; */

-- SELECT * FROM employee;

--CONSTRAINTS

-- DROP TABLE persons;

/*
CREATE TABLE people(p_id INTEGER PRIMARY KEY,
					p_name VARCHAR(30) NOT NULL,
					p_age INTEGER DEFAULT 18,
					p_ssn CHAR(11) UNIQUE,
					CONSTRAINT age_constraint CHECK (p_age>=0 AND p_age<100)); */

-- SELECT * FROM people;

-- INSERT INTO people(p_id, p_name) VALUES (1,'Hassan Shahzad');

-- SELECT * FROM people;

-- ALTER table people ADD COLUMN p_weight FLOAT DEFAULT 0.0;

-- ALTER TABLE people ADD CONSTRAINT weight_constraint CHECK (p_weight>=0.0 AND p_weight<200);

-- TRUNCATE TABLE people;

-- SELECT * FROM people;

-- SELECT location FROM employee;

-- SELECT DISTINCT location FROM employee;

-- SELECT * FROM employee WHERE location IN ('Islamabad', 'Lahore')

-- SELECT count(*) FROM employee WHERE location IN ('Islamabad', 'Lahore')

-- SELECT * FROM employee WHERE name LIKE 'H%'	

-- SELECT * FROM employee WHERE dept LIKE '%e'

--SELECT name as full_name, dept as department FROM employee WHERE dept LIKE '%n%'

--AGGREGATE FUNCTIONS

-- SELECT SUM(age) FROM employee;

-- SELECT AVG(age) FROM employee;

-- SELECT MAX(age) FROM employee;

-- SELECT MIN(age) FROM employee;

--Average Salary by Department

-- SELECT e.dept, AVG(e.salary) AS "average salary" FROM employee e GROUP BY e.dept;

--Count of Employees by Location and Department

-- SELECT e.dept, e.location, COUNT(*) AS "LOCATION AND DEPARTMENT WISE COUNT" FROM employee e GROUP BY e.dept, e.location; 

--Maximum and Minimum Salary per Department

-- SELECT e.dept, MAX(e.salary) AS "maximum salary", MIN(e.salary) AS "minimum salary" FROM employee e GROUP BY e. dept ORDER BY "maximum salary"; 

-- Department with Highest Average Salary

-- SELECT e2.dept, AVG(e2.salary) AS "average salary" FROM employee e2 GROUP BY e2.dept ORDER BY "average salary" DESC LIMIT 1 ;
