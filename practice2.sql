/*SELECT * FROM employee
ORDER BY id
LIMIT 10 OFFSET 10;*/

/*SELECT dept, COUNT(*) 
FROM employee
GROUP BY dept;*/

/*SELECT location, SUM(experience) AS "Total Experience"
FROM employee 
GROUP BY location;*/

/*SELECT dept, COUNT(*) 
FROM employee 
GROUP BY dept 
HAVING COUNT(*)>20;*/

/*SELECT dept, MAX(salary) AS "Maximum Salary"
FROM employee
GROUP BY dept*/

/*SELECT dept, MIN(salary) 
FROM employee 
GROUP BY dept
HAVING MIN(salary)>70000;*/

/*SELECT location, dept, AVG(salary) AS "Average Salary By L&D "
FROM employee 
GROUP BY location, dept;*/

-- SELECT * FROM employee;

/*SELECT MAX(salary) FROM employee 
WHERE salary <(
SELECT MAX(salary) FROM employee
WHERE salary <(
SELECT MAX(salary) FROM employee));*/

/*SELECT salary
FROM employee 
ORDER BY salary DESC
LIMIT 1
OFFSET 2;*/

--Find employees with the same department as 'Ali Khan'

/*SELECT e.id, e.name, e.dept
FROM employee e
WHERE e.dept = (
		SELECT e2.dept 
		FROM employee e2 
		WHERE e2.name = 'Noor Fatima'
);*/

-- Joins

-- A PERSON CAN OWN MULTIPLE THINGS. A THING CAN BE OWNED BY MULTIPLE PERSONS. USE JUNCTION TABLE FOR M:N.

/*CREATE TABLE people(
				id SERIAL PRIMARY KEY,
				name VARCHAR(255),
				age INTEGER,
				height FLOAT,
				gender CHAR(1));*/

/*CREATE TABLE things(
				t_id SERIAL PRIMARY KEY,
				t_name VARCHAR(255) NOT NULL,
				t_description TEXT		
);*/

/*CREATE TABLE ownership(
				o_owner INTEGER NOT NULL,
				O_thing INTEGER NOT NULL,
				PRIMARY KEY(o_owner, o_thing),
				FOREIGN KEY(o_owner) REFERENCES people (p_id),
				FOREIGN KEY(o_thing) REFERENCES things (t_id)
);*/

/*CREATE TABLE friendships(
				f_friend1 INTEGER,
				f_friend2 INTEGER,
				PRIMARY KEY (f_friend1, f_friend2),
				FOREIGN KEY (f_friend1) REFERENCES people (p_id),
				FOREIGN KEY (f_friend2) REFERENCES people (p_id)
);*/


/*INSERT INTO people (p_name, p_age, p_height, p_gender) VALUES
('Ali Khan', 28, 5.9, 'M'),
('Sara Malik', 25, 5.4, 'F'),
('Usman Tariq', 35, 6.0, 'M'),
('Ayesha Noor', 30, 5.6, 'F'),
('Bilal Ahmed', 40, 5.8, 'M'),
('Hina Qureshi', 22, 5.5, 'F'),
('Omar Siddiqui', 31, 6.1, 'M'),
('Zara Hussain', 27, 5.7, 'F'),
('Tariq Mehmood', 38, 5.9, 'M'),
('Maryam Saeed', 26, 5.3, 'F'),
('Adnan Ali', 33, 6.0, 'M'),
('Laiba Aslam', 29, 5.6, 'F'),
('Noman Akhtar', 24, 5.8, 'M'),
('Eman Shah', 32, 5.5, 'F'),
('Rizwan Haider', 36, 6.1, 'M'),
('Areeba Nadeem', 23, 5.4, 'F'),
('Waqas Butt', 27, 6.0, 'M'),
('Bushra Asif', 25, 5.6, 'F'),
('Shahid Iqbal', 34, 5.9, 'M'),
('Iqra Rehman', 28, 5.5, 'F');*/


/*INSERT INTO things (t_name, t_description) VALUES
('Laptop', 'Dell XPS 13, 16GB RAM, 512GB SSD'),
('Smartphone', 'iPhone 14 Pro Max'),
('Bicycle', 'Mountain bike with 21 gears'),
('Watch', 'Fossil Chronograph'),
('Headphones', 'Sony WH-1000XM5 noise-cancelling'),
('Tablet', 'iPad Air 5th Gen'),
('Camera', 'Canon EOS R10 DSLR'),
('Backpack', 'Waterproof hiking backpack'),
('Shoes', 'Nike Air Jordan'),
('Gaming Console', 'PlayStation 5'),
('Monitor', '27-inch 4K UHD display'),
('Keyboard', 'Mechanical RGB keyboard'),
('Car', 'Honda Civic 2022 model'),
('Desk', 'Adjustable standing desk'),
('Chair', 'Ergonomic office chair'),
('Drone', 'DJI Mini 3 Pro'),
('Guitar', 'Fender acoustic guitar'),
('Book', 'Atomic Habits by James Clear'),
('Coffee Maker', 'Nespresso Vertuo machine'),
('TV', 'Samsung 55-inch QLED Smart TV'); */


/*INSERT INTO ownership (o_owner, o_thing) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 1), (3, 5), (3, 6),
(4, 2), (4, 7),
(5, 8), (5, 9),
(6, 10), (6, 3),
(7, 11), (7, 4),
(8, 12), (8, 13),
(9, 14), (9, 1),
(10, 5), (10, 15),
(11, 16), (11, 6),
(12, 17), (12, 7),
(13, 18), (13, 9),
(14, 19), (14, 20),
(15, 1), (15, 8),
(16, 2), (16, 10),
(17, 3), (17, 11),
(18, 4), (18, 12),
(19, 5), (19, 13),
(20, 6), (20, 14);
*/

-- SELECT * FROM ownership;

-- SELECT * FROM things;

-- SELECT * FROM people;

--PRACTICING JOIN QUERIES
--INNER JOIN

/*SELECT p_id, o_owner FROM 
people INNER JOIN ownership 
ON p_id = ownership.o_owner;*/

/*SELECT t_id, o_thing FROM 
things INNER JOIN ownership
ON t_id = o_thing;*/

/*DELETE FROM ownership
WHERE o_owner in (1,9,17,19);*/

-- SELECT * FROM ownership;

-- OUTER JOIN

/*SELECT p_name, p_id, o_owner
FROM people LEFT OUTER JOIN ownership
on p_id = o_owner;*/

/*SELECT p_name, p_id, o_owner
FROM people RIGHT OUTER JOIN ownership
on p_id = o_owner;*/

/*SELECT p_name, p_id, o_owner
FROM people FULL OUTER JOIN ownership
ON p_id = o_owner;*/

-- GIVE SPECIFIC THINGS THAT SHARE OWNERSHIP

/*SELECT t_name 
FROM things INNER JOIN ownership
ON t_id = o_thing
GROUP BY t_name
HAVING COUNT(t_name)>1;*/

--GIVE ME OWNER NAMES THAT OWNED THE SAME THING

/*SELECT p1.p_name as "person1", p2.p_name as "person2",t.t_name "shared thing"
FROM ownership o1
INNER JOIN ownership o2
ON o1.o_thing = o2.o_thing
INNER JOIN people p1 ON o1.o_owner = p1.p_id
INNER JOIN people p2 ON o2.o_owner = p2.p_id
INNER JOIN things t ON o1.o_thing = t.t_id
WHERE o1.o_owner <> o2.o_owner; */


/*INSERT INTO friendships (f_friend1, f_friend2) VALUES
(1, 2),
(1, 3),
(1, 5),
(2, 4),
(2, 6),
(3, 7),
(3, 8),
(4, 5),
(4, 9),
(5, 10),
(6, 7),
(6, 11),
(7, 12),
(8, 9),
(8, 13),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(14, 16),
(15, 16);*/

--SEE ALL FRIENDSHIPS

/*SELECT p1.p_name AS "friend 1", p2.p_name AS "friend 2"
FROM people p1 INNER JOIN friendships f1 ON p1.p_id = f1.f_friend1
INNER JOIN people p2 ON f1.f_friend2 = p2.p_id;*/

-- SEE PERSONS WITHOUT ANY FRIEND

/*SELECT p2.p_name AS "persons without friends"
FROM people p LEFT OUTER JOIN friendships f
ON p.p_id = f.f_friend1
RIGHT JOIN people p2 ON f.f_friend2=p2.p_id
WHERE f_friend1 IS NULL; */


--Find all people who own more than one thing

/*SELECT p.p_id, count(*) AS "things count"
FROM people p INNER JOIN ownership o
ON p.p_id = o.o_owner
GROUP BY p.p_id
HAVING COUNT(*)>1;*/

-- List all people and the names of the things they own

/*SELECT p.p_name, t.t_name 
FROM people p INNER JOIN ownership o 
ON p.p_id = o.o_owner
INNER JOIN things t
ON o.o_thing = t.t_id
ORDER BY p.p_name ASC;*/

--Find each gender’s average height and average age

/*SELECT p.p_gender, AVG(p.p_age) AS "average age", AVG(p.p_height) AS "average height"
FROM people p
GROUP BY p.p_gender;*/

--Find each thing and how many people own it

/*SELECT t.t_name, COUNT(o.o_owner) as "total count"
FROM things t INNER JOIN ownership o
ON t.t_id = o.o_thing
GROUP BY t.t_name; */

--Show pairs of friends who both own at least one thing in common

/*SELECT DISTINCT p1.p_name AS "friend 1", p2.p_name AS "friend 2", t.t_name AS "common thing"
FROM people p1 INNER JOIN friendships f1 ON p1.p_id = f1.f_friend1
INNER JOIN people p2 ON f1.f_friend2 = p2.p_id
INNER JOIN ownership o1 ON p1.p_id = o1.o_owner
INNER JOIN ownership o2 ON p2.p_id = o2.o_owner
INNER JOIN things t ON o1.o_thing = t.t_iD AND o1.o_thing = o2.o_thing; */

-- SET OPERATIONS

/*SELECT p.p_name, t.t_name FROM people p
INNER JOIN ownership o ON p.p_id = o.o_owner
INNER JOIN things t ON o.o_thing = t.t_id 
WHERE t_name LIKE '%d'

UNION

SELECT p.p_name, t.t_name FROM people p
INNER JOIN ownership o ON p.p_id = o.o_owner
INNER JOIN things t ON o.o_thing = t.t_id 
WHERE p_name LIKE '%f'; */

/*SELECT p.p_name, t.t_name FROM people p
INNER JOIN ownership o ON p.p_id = o.o_owner
INNER JOIN things t ON o.o_thing = t.t_id 
WHERE t_name LIKE '%d'

INTERSECT

SELECT p.p_name, t.t_name FROM people p
INNER JOIN ownership o ON p.p_id = o.o_owner
INNER JOIN things t ON o.o_thing = t.t_id 
WHERE p_name LIKE '%f'; */

--Show all people who either own something OR have at least one friend.

/*
SELECT DISTINCT p.p_name FROM people p
INNER JOIN ownership o ON p.p_id = o.o_owner
 
UNION ALL

SELECT DISTINCT p.p_name FROM people p
INNER JOIN friendships f1 ON p.p_id = f1.f_friend1
INNER JOIN people p2 ON f1.f_friend2 = p2.p_id;*/











