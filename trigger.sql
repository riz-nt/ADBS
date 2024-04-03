create database trigger1;
use trigger1;
CREATE TABLE Emp (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    Age INT(2),
    Salary INT(10)
);
 delimiter \\
Create trigger Check_salary before INSERT on Emp
for each row
if new.Salary<'30000' then
set new.Salary='31000';
end if;\\

INSERT INTO Emp (EmpID, Name,Country, Age, Salary)
VALUES (1, 'Shubham',  'India','23','30000'),
       (2, 'Aman ',  'Australia','21','45000'),
       (3, 'Naveen', 'Sri lanka','24','40000'),
       (4, 'Aditya',  'Austria','21','35000'),
       (5, 'Nishant', 'Spain','22','25000');
Select * from Emp;


