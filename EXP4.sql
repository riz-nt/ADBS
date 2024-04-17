use RIZ;

SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY
FROM instructor
GROUP BY DEPARTMENT
HAVING SUM(SALARY) > (SELECT AVG(TOTAL_SALARY) FROM (SELECT SUM(SALARY) AS TOTAL_SALARY FROM instructor GROUP BY DEPARTMENT) AS AVG_SALARY) ;

SELECT instructor.name AS instructor_name, teaches.Course_id 
FROM instructor 
JOIN teaches  ON instructor.ID = teaches.ID;


SELECT instructor.NAME as instructor_name, teaches.Course_id 
FROM instructor 
LEFT JOIN teaches ON instructor.ID = teaches.ID;

CREATE VIEW FACULTY AS SELECT ID, NAME, DEPARTMENT FROM instructor;
SELECT * FROM FACULTY;

CREATE USER nw_user@localhost IDENTIFIED BY "1234";
GRANT SELECT ON FACULTY TO nw_user@localhost;
