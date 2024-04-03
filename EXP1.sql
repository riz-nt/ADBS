CREATE DATABASE RIZ;
USE RIZ;
CREATE TABLE instructor(
	ID int primary key,
    NAME varchar(20),
    DEPARTMENT varchar(20),
    SALARY int
);
INSERT INTO instructor (ID, NAME, DEPARTMENT,SALARY)
VALUES
    (10101, 'Srinivasan', 'Comp. Sci.', 65000),
    (12121, 'Wu', 'Finance', 90000),
    (15151, 'Mozart', 'Music', 40000),
    (22222, 'Einstein', 'Physics', 95000),
    (32343, 'El Said', 'History', 60000),
    (33456, 'Gold', 'Physics', 87000),
    (45565, 'Katz', 'Comp. Sci.', 75000),
    (58583, 'Califieri', 'History', 62000),
    (76543, 'Singh', 'Finance', 80000),
    (76766, 'Crick', 'Biology', 72000),
    (83821, 'Brandt', 'Comp. Sci.', 92000),
    (98345, 'Kim', 'Elec. Eng.', 80000);
SELECT * FROM instructor;    
CREATE TABLE teaches (
    ID INT ,
    Course_id VARCHAR(10),
    sec_id INT,
    semester VARCHAR(10),
    year INT
);

INSERT INTO teaches (ID, Course_id, sec_id, semester, year)
VALUES
    (10101, 'CS-101', 1, 'Fall', 2017),
    (10101, 'CS-315', 1, 'Spring', 2018),
    (10101, 'CS-347', 1, 'Fall', 2017),
    (12121, 'FIN-201', 1, 'Spring', 2018),
    (15151, 'MU-199', 1, 'Spring', 2018),
    (22222, 'PHY-101', 1, 'Fall', 2017),
    (32343, 'HIS-351', 1, 'Spring', 2018),
    (45565, 'CS-101', 1, 'Spring', 2018),
    (45565, 'CS-319', 1, 'Spring', 2018),
    (76766, 'BIO-101', 1, 'Summer', 2017),
    (76766, 'BIO-301', 1, 'Summer', 2018),
    (83821, 'CS-190', 1, 'Spring', 2017),
    (83821, 'CS-190', 2, 'Spring', 2017),
    (83821, 'CS-319', 2, 'Spring', 2018),
    (98345, 'EE-181', 1, 'Spring', 2017);

SELECT  * FROM teaches;
INSERT INTO instructor (ID, NAME, DEPARTMENT, SALARY)
VALUES (10211, 'Smith', 'Biology', 66000);

DELETE FROM instructor WHERE ID="10211";

SELECT *
FROM instructor
CROSS JOIN teaches;

SELECT instructor.NAME, teaches.Course_id
FROM instructor
JOIN teaches ON instructor.ID = teaches.ID;

SELECT NAME FROM instructor WHERE NAME LIKE '%dar';

SELECT NAME FROM instructor WHERE 
SALARY BETWEEN 90000 AND 100000;