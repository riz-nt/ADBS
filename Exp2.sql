SELECT * FROM  instructor 
ORDER BY SALARY;

SELECT DISTINCT Course_id 
FROM teaches
WHERE semester='FALL' AND year='2017'
 OR    semester='SPRING' AND year='2018';
 
 SELECT DISTINCT Course_id 
FROM teaches
WHERE semester='FALL' AND year='2017'
 AND  semester='SPRING' AND year='2018';
 
 SELECT DISTINCT Course_id 
FROM teaches
WHERE semester='FALL' AND year='2017'
 AND  NOT(semester='SPRING' AND year='2018');
 
 INSERT INTO instructor(ID, NAME, DEPARTMENT,SALARY) 
 VALUES
 (10211, 'Smith', 'Biology', 66000),
 (10212, 'Tom', 'Biology', NULL );
 
 SELECT * FROM instructor;
 
 SELECT NAME FROM instructor 
 WHERE SALARY IS NULL;
 
 SELECT AVG(SALARY)
 FROM instructor
 WHERE DEPARTMENT='Comp. Sci.';
