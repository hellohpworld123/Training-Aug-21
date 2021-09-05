USE DAY4

--1ST--> ROW_NUMBER() -- ASCE OR DECS COLUMS ORDER BY __COLUMN_NAME__LIKE 1 2 3 4 5 .... CONTINUELY 
SELECT StudentName,Subject,Marks, ROW_NUMBER() OVER(ORDER BY StudentName)ROWNUMBER FROM ExamResult --THIS ONE IS BY DEFAULT ASCENDING
SELECT StudentName,Subject,Marks, ROW_NUMBER() OVER(ORDER BY StudentName DESC)ROWNUMBER FROM ExamResult

--2ND-->RANK() -- BY CREATING GROUP PERTICULAR COLUMN'S DATA AND PROVIDE SEPARATE RANK LIKE 1 2 3 ,1 2 3 4, 1 2 3...
SELECT Studentname,Subject,Marks,RANK() OVER(PARTITION BY Studentname ORDER BY Marks) Rank FROM ExamResult
SELECT Studentname,Subject,Marks,RANK() OVER(PARTITION BY Studentname ORDER BY Subject) Rank FROM ExamResult
SELECT Studentname,Subject,Marks,RANK() OVER(PARTITION BY Studentname ORDER BY Studentname) Rank FROM ExamResult
										-------------OR---------------
SELECT Studentname,Subject,Marks,RANK() OVER(ORDER BY Marks DESC) Rank FROM ExamResult ORDER BY Rank;

--3RD-->DENSE_RANK() -- PROVIDE SAME NUMBER TO SAME GROUP LIKE 1 2 3 3 4 5 6 6 ....
SELECT Studentname,Subject,Marks, DENSE_RANK() OVER(ORDER BY Marks DESC) Rank FROM ExamResult ORDER BY Rank;
SELECT Studentname,Subject,Marks, DENSE_RANK() OVER(ORDER BY Subject DESC) Rank FROM ExamResult ORDER BY Rank;
SELECT Studentname,Subject,Marks, DENSE_RANK() OVER(ORDER BY Studentname DESC) Rank FROM ExamResult ORDER BY Rank;

--4TH-->NTILE() --
SELECT *, NTILE(2) OVER(ORDER BY Marks DESC) Rank FROM ExamResult ORDER BY rank;


--AGGREGATE-FUNCTION

--APPROX_COUNT_DISTINCT                 ---->>>>  This function returns the approximate number of unique non-null values in a group.
SELECT APPROX_COUNT_DISTINCT(Salary)from Employees_1;

--AVERAGE
SELECT AVG(Salary) from Employees_1;

--CHECKSUM_AGG
SELECT CHECKSUM_AGG(CAST(Salary AS INT)) from Employees_1;


--COUNT
SELECT COUNT(Salary) FROM Employees_1;

--GROUPING

SELECT GROUPING(ManagerID) AS '100' FROM Employees_1
GROUP BY ManagerID ;

SELECT GROUPING(ManagerID) AS '100' FROM Employees_1
GROUP BY ManagerID WITH ROLLUP ;

--LEARNING HAVING PROBLEM
SELECT GROUPING(ManagerID) FROM Employees_1
GROUP BY Salary;

--MAX
SELECT MAX(Salary)  FROM Employees_1;

--MIN
SELECT MIN(Salary)  FROM Employees_1;

--STDDEV                   ------->>>>>>>Returns the statistical standard deviation of all values in the specified expression.
SELECT STDEV(Salary) FROM Employees_1;

--STRING_AGG LEARNING
SELECT STRING_AGG(CONVERT(VARCHAR(MAX),FirstName),CHAR(13)) AS HP  FROM Employees_1;

--SUM
SELECT SUM(SALARY) FROM Employees_1;

--VAR
SELECT VAR(SALARY) FROM Employees_1;

--VARP
SELECT VARP(SALARY) FROM Employees_1;
select * from Employees_1

SELECT JobId,SUM(Salary) FROM Employees_1 GROUP BY ROLLUP(JobId) ORDER BY JobId
SELECT JobId,SUM(Salary) FROM Employees_1 GROUP BY (JobId) ORDER BY JobId