USE DAY7

-->>PRACTICE-EXERSICE

--INTERSECT
SELECT EMP.DepartmentId,EMP.ManagerId FROM Employees AS EMP
INTERSECT
SELECT DEP.DepartmentID,DEP.ManagerID FROM Departments AS DEP

--EXCEPT
SELECT EMP.DepartmentId,EMP.ManagerId FROM Employees AS EMP
EXCEPT
SELECT DEP.DepartmentID,DEP.ManagerID FROM Departments AS DEP

--UNION AND UNION ALL
SELECT EMP.DepartmentId,EMP.ManagerId FROM Employees AS EMP
UNION
SELECT DEP.DepartmentID,DEP.ManagerID FROM Departments AS DEP

SELECT EMP.DepartmentId,EMP.ManagerId FROM Employees AS EMP
UNION ALL
SELECT DEP.DepartmentID,DEP.ManagerID FROM Departments AS DEP;

--CTE
WITH
cteEmployees (FirstName,LastName,DepartmentName,Email)
AS(
SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
)
SELECT * FROM cteEmployees;

--WITH GROUP BY
WITH
	cteEmployees(FirstName,LastName,DepartmentName,Email)
AS(
	SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
  )
Select DepartmentName,COUNT( DepartmentName) From cteEmployees
GROUP BY DepartmentName;

--WITH OREDER BY
WITH
cteEmployees (FirstName,LastName,DepartmentName,Email)
AS(
SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
)
SELECT * FROM cteEmployees
ORDER BY DepartmentName

--multiple cte
WITH
cteEmployees1 (FirstName,LastName)
AS
(
SELECT FirstName,LastName FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
),
cteEmployees2 (DepartmentName,Email)
AS
(
SELECT DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
)
SELECT * FROM cteEmployees1,cteEmployees2
ORDER BY DepartmentName;

--WITH UNION
WITH
cteEmployees1 (FirstName,LastName)
AS
(
SELECT FirstName,LastName FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
),
cteEmployees2 (DepartmentName,Email)
AS
(
SELECT DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
)
SELECT * FROM cteEmployees1
UNION all
SELECT * FROM cteEmployees2

--RECURSVE TABLE EXPRESSION
WITH
cteEmployees (FirstName,LastName,DepartmentName,Email)
AS
(
SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
UNION
SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.DepartmentID = DEP.DepartmentID
)
SELECT * FROM cteEmployees
ORDER BY DepartmentName

--UPDATE
WITH
	cteEmployees(FirstName,LastName,DepartmentName,Email)
AS
	(
	SELECT FirstName,LastName,DepartmentName,Email FROM SANDY.dbo.Employees AS EMP JOIN Departments AS DEP ON EMP.EmployeeId = DEP.ManagerID
	)
SELECT * from cteEmployees
UPDATE cteEmployees
SET FirstName = 'Sundy'
Where FirstName = 'Steven';