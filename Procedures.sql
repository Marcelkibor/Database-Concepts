DELIMITER $$
-- procedure to calculate total for all Employees
CREATE PROCEDURE EmployeeTotalSalary(OUT totalSalary DECIMAL(10,2))
BEGIN
	SELECT SUM(Salary) INTO totalSalary FROM Employees;
END$$

DELIMITER ;
CALL EmployeeTotalSalary(@totalSalary);
SELECT @totalSalary;

-- procedure to insert new employee record
DELIMITER $$
CREATE PROCEDURE AddEmployee(
    IN empId INT,
    IN empFirstname VARCHAR(20),
    IN empLastname VARCHAR(20),
    IN empSalary DECIMAL(10,2)
)
BEGIN
    INSERT INTO Employees (Id, Firstname, Lastname, Salary)
    VALUES (empId, empFirstname, empLastname, empSalary);
END$$

DELIMITER ;
-- add new employee record and observe the salary update return value
CALL AddEmployee('4','Marion','Omarion',3232);
CALL EmployeeTotalSalary(@totalSalary);
SELECT @totalSalary;
