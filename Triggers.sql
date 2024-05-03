-- A trigger is a special kind of stored procedure
-- Executes before or after an event that changes data on a database occurs. CRUD
-- Types include: Before, After, Instead Of 

-- BEFORE
DELIMITER $$
CREATE TRIGGER before_employee_insert
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    IF NEW.Salary < 0 THEN
        SET NEW.Salary = 0.00;
    END IF;
END$$
DELIMITER ;
desc Employees;
insert into Employees(Id,Firstname,Lastname,Salary) values(3,'John','Doe',-2422);
select * from Employees where Lastname ="Doe";
-- returns John's new salary as defined by the trigger
