CREATE DATABASE DAY5
USE DAY5

SELECT EmployeeID,DATEADD(DAY,1,EOMONTH(HireDate)) AS INCENTIVE_DATE, (Salary*0.15) AS INCENSTIVE_AMOUNT  INTO INCENTIVE_TABLE 
FROM DAY4.dbo.Employees_1

UPDATE INCENTIVE_TABLE
SET INCENSTIVE_AMOUNT =NULL
WHERE DATENAME(MONTH,INCENTIVE_DATE) = 'SEPTEMBER'

SELECT * FROM INCENTIVE_TABLE,DAY4.dbo.Employees_1

--Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table
SELECT HireDate,INCENTIVE_DATE, DATEDIFF(DAY,HireDate,INCENTIVE_DATE)DIFFERENCE_JOIN_INCENTIVE FROM DAY4.dbo.Employees_1 AS EMP,INCENTIVE_TABLE AS INC
WHERE EMP.EmployeeID = INC.EmployeeID

									-----OR------
SELECT HireDate,INCENTIVE_DATE, DATEDIFF(DAY,HireDate,INCENTIVE_DATE)DIFFERENCE_JOIN_INCENTIVE FROM DAY4.dbo.Employees_1 AS EMP JOIN INCENTIVE_TABLE AS INC
ON EMP.EmployeeID = INC.EmployeeID


--Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000
SELECT FirstName,INCENSTIVE_AMOUNT,Salary FROM INCENTIVE_TABLE AS INC,DAY4.dbo.Employees_1 AS EMP
WHERE EMP.EmployeeID = INC.EmployeeID AND INCENSTIVE_AMOUNT>3000

						-----OR------

SELECT FirstName,INCENSTIVE_AMOUNT,Salary FROM INCENTIVE_TABLE AS INC JOIN DAY4.dbo.Employees_1 AS EMP
ON EMP.EmployeeID = INC.EmployeeID AND INCENSTIVE_AMOUNT>3000

--Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
SELECT FirstName,INCENSTIVE_AMOUNT FROM INCENTIVE_TABLE AS INC,DAY4.dbo.Employees_1 AS EMP
WHERE EMP.EmployeeID = INC.EmployeeID

SELECT FirstName,INCENSTIVE_AMOUNT FROM INCENTIVE_TABLE AS INC RIGHT OUTER JOIN DAY4.dbo.Employees_1 AS EMP
ON EMP.EmployeeID = INC.EmployeeID

SELECT * FROM DAY4.dbo.Employees_1

--Select EmployeeName, ManagerName from the employee table.
SELECT EMP.FirstName, MGR.FirstName 
FROM DAY4.dbo.Employees_1 AS EMP, DAY4.dbo.Employees_1 AS MGR  
WHERE emp.ManagerID = mgr.EmployeeID