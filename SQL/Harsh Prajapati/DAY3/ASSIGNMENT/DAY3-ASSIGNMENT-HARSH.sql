CREATE DATABASE
USE DAY3;

CREATE TABLE Employees_1(
    EmployeeID decimal(6,0) NOT NULL DEFAULT '0',
	FirstName varchar(20) DEFAULT NULL,
	LastName varchar(25) NOT NULL,
	Email varchar(25) NOT NULL,
	PhoneNumber varchar(20) DEFAULT NULL,
	HireDate date NOT NULL,
	JobId varchar(10) NOT NULL,
	Salary decimal(8,2) DEFAULT NULL,
	CommissionPct decimal(2,2) DEFAULT NULL,
	ManagerID decimal(6,0) DEFAULT NULL,
	DepartmentID decimal(4,0) DEFAULT NULL,
	CONSTRAINT pk_EmployeeID PRIMARY KEY (EmployeeID),
	CONSTRAINT ukEmail UNIQUE  (Email),
)
INSERT INTO Employees_1(EmployeeID,FirstName,LastName , Email, PhoneNumber, HireDate, JobId, Salary, CommissionPct, ManagerID, DepartmentID) VALUES
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50');

CREATE TABLE Departments_1 (
   DepartmentID decimal(4,0) NOT NULL DEFAULT '0',
   DepartmentName varchar(30) NOT NULL,
   ManagerID decimal(6,0) DEFAULT NULL,
   LocationID decimal(4,0) DEFAULT NULL,
	PRIMARY KEY (DepartmentID),
 )
INSERT INTO Departments_1  VALUES
('10', 'Administration', '200', '1700'),
('20', 'Marketing', '201', '1800'),
('30', 'Purchasing', '114', '1700'),
('40', 'Human Resources', '203', '2400'),
('50', 'Shipping', '121', '1500'),
('60', 'IT', '103', '1400'),
('70', 'Public Relations', '204', '2700'),
('80', 'Sales', '145', '2500'),
('90', 'Executive', '100', '1700'),
('100', 'Finance', '108', '1700'),
('110', 'Accounting', '205', '1700'),
('120', 'Treasury', '0', '1700'),
('130', 'Corporate Tax', '0', '1700'),
('140', 'Control And Credit', '0', '1700'),
('150', 'Shareholder Services', '0', '1700'),
('160', 'Benefits', '0', '1700'),
('170', 'Manufacturing', '0', '1700'),
('180', 'Construction', '0', '1700'),
('190', 'Contracting', '0', '1700'),
('200', 'Operations', '0', '1700'),
('210', 'IT Support', '0', '1700'),
('220', 'NOC', '0', '1700'),
('230', 'IT Helpdesk', '0', '1700'),
('240', 'Government Sales', '0', '1700'),
('250', 'Retail Sales', '0', '1700'),
('260', 'Recruiting', '0', '1700'),
('270', 'Payroll', '0', '1700');

-->>Assignment:

--Write a query that displays the FirstName and the length of the FirstName for all employees
--whose name starts with the letters ‘A’, ‘J’ or ‘M’. Give each column an appropriate label. Sort the results by the employees’ FirstName
SELECT FirstName,DATALENGTH(FirstName)appropriate_label FROM Employees_1
WHERE FirstName LIKE 'A%'OR FirstName LIKE 'J%' OR FirstName LIKE 'M%';

/*Write a query to display the FirstName and Salary for all employees. Format the salary to be 10 characters long,
left-padded with the $ symbol. Label the column SALARY.*/

SELECT FirstName , FORMAT(Salary,'$0000000000.00')  AS 'SALARY' FROM Employees_1

/*Write a query to display the employees with their code, first name, last name and hire date 
who hired either on seventh day of any month or seventh month in any year.*/

SELECT  EmployeeID,FirstName,LastName,HireDate FROM Employees_1 WHERE DATEPART(MONTH,HireDate) = 7 OR DATEPART(DAY,HireDate) = 7

--Write a query to display the length of first name for employees where last name contains character ‘c’ after 2nd position.
SELECT LEN(FirstName),LastName FROM Employees_1 WHERE SUBSTRING(LastName,2,LEN(LastName)-2) LIKE 'C%'

--Write a query to extract the last 4 character of PhoneNumber.
SELECT PhoneNumber,RIGHT(PhoneNumber,4) FROM Employees_1

--Write a query to update the portion of the PhoneNumber in the employees table, 
--within the phone number the substring ‘124’ will be replaced by ‘999’.
SELECT PhoneNumber,REPLACE(PhoneNumber,124,999) FROM Employees_1
WHERE  PhoneNumber LIKE '%124%'

--Write a query to calculate the age in year.

--Write a query to get the distinct Mondays from HireDate in employees tables.
SELECT DISTINCT DATENAME(DAY,HireDate),HireDate FROM Employees_1
WHERE DATENAME(WEEKDAY,HireDate) = 'Monday'

--Write a query to get the FirstName and HireDate from Employees table where HireDate between ‘1987-06-01’ and ‘1987-07-30’
SELECT FirstName,HireDate FROM Employees_1
WHERE HireDate BETWEEN '1987-06-01' AND '1987-07-30';

--Write a query to display the current date in the following format.Sample output : 12:00 AM Sep 5, 2014
SELECT FORMAT(GETDATE(),'HH:MM tt MMM dd, yyyy')

--Write a query to get the FirstName, LastName who joined in the month of June.
SELECT FirstName,LastName,DATENAME(MONTH,HireDate) FROM Employees_1 WHERE DATENAME(MONTH,HireDate)='JUNE'

--Write a query to get first name, hire date and experience of the employees.
SELECT FirstName,HireDate,DATEDIFF(YEAR,HireDate,GETDATE())EXPERIANCE_In_YEAR FROM Employees_1

--Write a query to get first name of employees who joined in 1987.
SELECT FirstName, DATENAME(YEAR,HireDate) FROM Employees_1 WHERE DATENAME(YEAR,HireDate)=1987