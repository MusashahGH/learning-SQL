-- CREATE DATABASE startersql; -- a way to store data which is easily accessible
 USE startersql;
-- DROP DATABASE startersql; --IF YOU WANT TO ERASE THIS DATABASE PERMANENTLY

-- 1:CREATING A TABLE 

-- CREATE TABLE users(
-- PersonID INT AUTO_INCREMENT PRIMARY KEY,
-- Name VARCHAR(100) NOT NULL,
-- Email VARCHAR(100) UNIQUE NOT NULL,
-- Gender ENUM('Male','Female','Other'),
-- Date_of_Birth DATE,
-- Create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- ); -- CREATE A NEW TABLE IN THAT DATABASE 

-- DROP TABLE users; -- IF YOU WANT TO ERASE THIS TABLE PERMANENTLY

SELECT * FROM users; -- show all the data( rows columns) in your TABLE
-- SELECT PersonId, Name , Email FROM users; -- if you want only specific column

-- 2:RRENAMING A TABLE
-- RENAME TABLE users TO Customers; -- convert users to customes
-- RENAME TABLE Customers TO users; -- again convert customers to users

-- 3:ALTERING A TABLE
-- ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- ALTER TABLE users ADD COLUMN Salary DECIMAL(10,2);
-- SELECT*FROM users;
-- -- ALTER TABLE users DROP COLUMN is_active --IF YOU WANT to DROP a specific column
-- ALTER TABLE users MODIFY COLUMN Name VARCHAR(200); -- MODIFY a column

--   /Move a column to first postion & changing postion/
-- ALTER TABLE users MODIFY COLUMN Gender ENUM('Male','Female','Other') AFTER Email; -- gender then email 
-- ALTER TABLE users MODIFY COLUMN is_active BOOLEAN DEFAULT TRUE AFTER Salary;
-- ALTER TABLE users MODIFY COLUMN Name VARCHAR(100) NOT NULL FIRST; -- name colm become first

-- 4:INSTERTING DATA in MYSQL (add data in Table)
-- INSERT INTO users VALUES
-- (101,'musa','musashah@example.com','Male', '2003-02-24','75000.00',DEFAULT); -- example how to insert data
-- by the way we use SAMPLE data in users TABLE

-- 5:WHERE CLAUSE= to filter records and extract only the row that fullfil the condition
-- SELECT * FROM users WHERE Gender='Male'; -- NOT EQUAL-> !=,<> Gender!='Male'
-- SELECT * FROM users WHERE PersonID <=3;
-- SELECT * FROM users WHERE Date_of_Birth IS NULL; -- or IS NOT NULL
-- SELECT * FROM users WHERE Date_of_Birth BETWEEN '1990-09-09' AND '1992-09-09';
-- SELECT * FROM users WHERE gender IN ('Male','other');
-- SELECT * FROM users WHERE Gender='Male' AND salary>'66000';
-- SELECT *FROM users WHERE Salary <72000 OR PersonID>4 ORDER BY date_of_birth ASC LIMIT 5;

-- 6:UPDATING THE DATA (it is used to update one or more record in a Table)
-- UPDATE users SET salary=68000 , Name='Musa Shah', Email='Musashah77@gmail.com' WHERE PersonID=1;
-- SET SQL_SAFE_UPDATES = 0; -- to aviod error 1175
-- UPDATE users SET Salary = Salary + 10000 WHERE Salary < 50000;

-- 7:DELETING DATA (delete statement removes rows from a Table.)
-- IMP: first try to run SELECT  with same data as you use WHERE clause to confirm what is affected
-- SELECT * FROM users WHERE PersonID=3;
-- DELETE * FROM users WHERE PersonID=3; -- permanently delete row

-- 8 CONSTRAINTS IN MYSQL
-- 1:unique, 2:null/not null 3:default 4:check constraint
-- ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (Date_of_Birth >'1610-01-01'); -- it chck if any date > then 1610 not all

-- 9:SQL FUNCTIONS = help you analyze,transform or summerize data in your table
-- I:COUNT() = return numbers of row that matches specific criterion
-- SELECT COUNT(*) FROM users; -- all rows no
-- SELECT COUNT(*) FROM users WHERE Gender='Male'; -- specific data
-- II:MIN N MAX() = return smallest/largest val.It works with numberic,date,string datatype
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
-- III: SUM N AVG() = calulate total sum/avg of a value.It ignores NULL val in column
-- SELECT SUM(salary) AS total_sum, AVG(salary) AS total_avg FROM users;
-- SELECT Gender,SUM(Salary) AS total_salary_sum FROM users GROUP BY Gender;
-- SELECT PersonID, Gender,LOWER(Name) AS lower, CONCAT(LOWER(Name) ,'_55BATCH') AS username,
-- DAY(Date_of_birth) AS day,LENGTH(Name) as len_of_name FROM users;
-- IV:DATEDIFF() = return no of days between 2 date vales
-- SELECT name ,DATEDIFF(CURDATE(), Date_of_Birth) AS days from users; -- how many days spend
-- V:MOD() = return remainder
-- SELECT PersonID,MOD(PersonID,2) AS remainder FROM users;
-- VI:CONDITION IF()
-- SELECT Name,gender,
-- IF(gender='Male','yes','no') AS is_male FROM users LIMIT 7;

-- 10:TRASACTION & AUTOCOMMIT
-- SET autocommit = 0; -- by default its 1(ON)
-- UPDATE users SET salary= 80000 WHERE id=5;
-- ROLLBACK; -- if you dont runt this
-- COMMIT; -- save permanently

-- 11:FOREIGN KEY
-- SELECT * FROM addresses; -- sample data in (View: sqL_FK_file)

-- 12:JOINS IN MYSQL
-- DEF: It is use to combine two or more tables based on the related column between them.

-- I: INNER JOIN = return only matching rows from both table 
-- SELECT users.Name,users.Email,addresses.city FROM users
-- INNER JOIN addresses ON  users.PersonID = addresses.user_id
-- II: LEFT/RIGHT JOINS = return all the data form left and matching colm form right table & vice versa
-- SELECT users.Name, users.Gender,addresses.state,addresses.street,addresses.Id AS adrss_id
-- FROM users
-- LEFT JOIN addresses ON users.PersonID = addresses.user_id
-- III: UNION / UNION ALL JOIN
-- DEF: It is used to combine the result sets of two or more SELECT statment.It removes duplicate bydefault.
-- DEF UNI ALL: It includes duplicate data too.

-- SELECT Name, Email,Gender FROM users
-- UNION -- same as UNION ALL
-- SELECT Name, Email,salary FROM admin_users;
-- -- anothe example: adding separate roles
-- SELECT Name, Email ,'User' AS role FROM users
-- UNION -- same as UNION ALL
-- SELECT Name, Email ,'Admin' AS role FROM admin_users;

-- IV: SELF JOIN = It is used to join the table by itself.It is usefull when
-- the rows in the same table are related to each other.
-- ALTER TABLE users ADD COLUMN referred_by_pID INT;
-- UPDATE users SET referred_by_pID =1 WHERE PersonID IN (2,3,10,14,23);
-- UPDATE users SET referred_by_pID=2 WHERE PersonID IN (4,5,9,16,20,24);
-- now using SELF JOIN
SELECT 
a.PersonID,
a.Name AS user_name,b.Name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_pID = b.PersonID; -- musa referred ayesha and so on

-- 13: VIEWS IN MYSQL 
-- DEF: It is a "virtual table" based on a result of SELECT query.
--  It dost not store the data itself its reflect the current data 
-- CREATE VIEW rich_users AS
-- SELECT * FROM users WHERE Salary >65000; -- it only show currrent data from users table
-- SELECT * FROM rich_users; -- if you want to change something from viw table you have to DROP it.
-- DROP VIEW rich_users; -- permanently delete 
-- Another Method to change something in view table
-- CREATE OR REPLACE VIEW rich_users AS
-- SELECT * FROM users WHERE Salary > 75000;
SELECT * FROM rich_users;

-- 14: INDEXS IN MYSQL
-- DEF: It is used to speed up data retreive.
-- The users cannot see the indexes, they are just used to speed up searches/queries
-- It works like "Index of a Book"
-- SYNTAX 1:CREATE INDEX indx_name ON tabl_name(colm1,colm2,...)
-- SYNTAX 2:CREATE UNIQUE INDEX indx_name ON tabl_name(colm1,colm2...)
SHOW index FROM users;

-- 15: SUBQURIES IN MYSQL
-- DEF: a subqurey is a query nested inside another query.
-- It is useful for break down complex problem in samller part
SELECT AVG (Salary) FROM users; -- avg_salary=64640.00
SELECT * FROM users WHERE salary < (SELECT AVG (Salary) FROM users);
-- Q1: find users who has been referred by someone who earn > 50000
SELECT PersonID,Name,referred_by_pID
FROM users WHERE referred_by_pID 
IN (SELECT PersonID FROM users WHERE salary >50000);
-- Q2: find name,salary then also find the avg_salary of that person
SELECT Name,Salary, (SELECT AVG(salary) FROM users) AS avg_emp_salary FROM users;

-- 16: GROUP BY  & HAVING in MYSQL
-- DEF: It is use to group rows tha have same value in specific column
-- The HAVING clause to filter groups after aggregation
SELECT Gender,AVG(Salary) AS avg_salary,COUNT(*) AS count 
FROM users WHERE Gender='Male' GROUP BY Gender;
SELECT Gender,AVG(Salary) AS avg_salary,COUNT(*) AS count
FROM users GROUP BY Gender HAVING AVG(Salary)>61000;
-- ROLLUP in MYSQL
-- DEF:To get subtotal and grandtotal use ROLLUP
SELECT Gender as Gender ,AVG(Salary) AS avg_salary,
COUNT(*) AS count FROM users
GROUP BY Gender WITH ROLLUP 
HAVING AVG(Salary)<68000;

-- 17: STORE PROCEDURE in MYSQL
-- DEF: It is a saved SQL block that can be executed later.
-- It is useful for "encapsulation" that can be reused multiple time.
-- DELIMITER $$
-- CREATE PROCEDURE AddUsers(
-- IN p_name VARCHAR(100),
-- IN p_email VARCHAR(100),
-- IN p_gender ENUM('Male','Female','Other'),
-- IN p_dob DATE,
-- IN p_salary INT)
-- BEGIN 
-- 	INSERT INTO users(name,email,gender,dob,salary)
--     VALUES(p_name,p_email,p_gender,p_dob,p_salary);
-- END $$
-- DELIMITER ;

-- CALL AddUsers('Muaz Ahmad','muazahamd@example.com','Male','2007-05-03','68200');
SHOW PROCEDURE STATUS WHERE Db= 'startersql';
-- DROP PROCEDURE IF EXISTS AddUsers;

-- 18: TRIGGER IN MYSQL
-- DEF: It is a special type of stored program that is automatically executed
--  when a specific event occur in a table such as INSER,UPDATE,DELETE.
-- DELIMITER $$
-- CREATE TRIGGER after_user_insert
-- AFTER INSERT ON users
-- FOR EACH ROW
-- BEGIN
-- 	INSERT INTO user_log(user_id,name)
--     VALUES(NEW.id,NEW.name);
-- END $$
-- DELIMITER;
-- INSERT INTO users(name,emial,gender,date_of_birth,salary)
-- VALUES('sayam','sayam29@example.com','Male','2004-07-07','54300');
SELECT * FROM user_log;
-- DROP TRIGGER IF EXIST after_user_insert;

-- 20:MORE IN SQL
-- WILDCARD OPERATIONS
SELECT * FROM users WHERE name LIKE 'A%'; -- starts with A
SELECT * FROM users WHERE name LIKE '%_A'; -- end with A
-- LIMITS WITH OFFASET
-- SELECT* FROM users ORDER BY personId
-- LIMIT 5 OFFSET 10; -- skip first 10 rows and return only 5 rows

SELECT * FROM users;


