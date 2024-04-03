 delimiter \\
Create trigger Check_salary before INSERT on Emp
for each row
if new.Salary<'30000' then
set new.Salary='31000';
end if;\\
 
