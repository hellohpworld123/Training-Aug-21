USE DAY6

-->>Practice Exercise
	-->>Subquery
	-->>Correlated subquery

-->>Subquery
--Select employee has Salary greater than average Salary
SELECT FirstName , Salary FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees)

--Select employee has equal salary as David Austin.
SELECT FirstName From Employees WHERE Salary = (SELECT Salary FROM Employees WHERE FirstName = 'David' AND LastName = 'Austin') AND FirstName != 'David' AND LastName != 'Austin'

--Select employee has equal salary as David(FirstName only).
SELECT EmployeeID , FirstName From Employees WHERE Salary IN (SELECT Salary FROM Employees WHERE FirstName = 'David') AND FirstName != 'David'

--Select employees has more salary than David . (>ALL)
SELECT EmployeeID , FirstName From Employees WHERE Salary >ALL (SELECT Salary FROM Employees WHERE FirstName = 'David') AND FirstName != 'David'

--Select employees has more salary than David .(<ANY)
SELECT EmployeeID , FirstName From Employees WHERE Salary >ANY (SELECT Salary FROM Employees WHERE FirstName = 'David') AND FirstName != 'David'

--Select employees has less salary than David . (>ALL)
SELECT EmployeeID , FirstName From Employees WHERE Salary <ALL (SELECT Salary FROM Employees WHERE FirstName = 'David') AND FirstName != 'David'

--Select employees has less salary than David .(<ANY)
SELECT EmployeeID , FirstName From Employees WHERE Salary <ANY (SELECT Salary FROM Employees WHERE FirstName = 'David') AND FirstName != 'David'

--Select department has same managerID as IT Support.
SELECT DepartmentName FROM Departments WHERE ManagerID = (SELECT ManagerID FROM Departments WHERE DepartmentName = 'IT Support')

--Select Department Has more employee then department 110.
SELECT DepartmentID , COUNT(EmployeeID) AS 'Number of Employee' FROM Employees GROUP BY DepartmentID HAVING COUNT(EmployeeID) > (SELECT COUNT(EmployeeID) FROM Employees WHERE DepartmentID = 110)   



-->>Correlated subquery
SELECT DepartmentName , (SELECT SUM(EmployeeID) as 'total emloyee' FROM Employees WHERE DepartmentID = Departments.DepartmentID) FROM Departments
