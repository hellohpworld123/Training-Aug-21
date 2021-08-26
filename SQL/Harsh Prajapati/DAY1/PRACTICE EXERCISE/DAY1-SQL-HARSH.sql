
--PRACTICE-1
--Write a SQL statement to create a table named countries including columns CountryId, CountryName and RegionId and make sure that no countries except Italy,
--India and China will be entered in the table. and combination of columns CountryId and RegionId will be unique.
CREATE DATABASE DAY1
USE DAY1

CREATE TABLE COUNTRIES(
COUNTRY_ID	VARCHAR(10)  UNIQUE,
COUNTRY_NAME VARCHAR(20),
REGION_Id VARCHAR(10)  UNIQUE
)

SELECT * FROM COUNTRIES

INSERT INTO COUNTRIES VALUES
('+91IND','INDIA','GJ'),
('+86CN','CHINA','BEJ'),
('+39IT','ITLY','ROME')

--PRACTICE-2
--Write a SQL statement to create a table named JobHistory including columns EmployeeId, StartDate, End_Eate, Job_Id and Department_Id 
--and make sure that the value against column EndDate will be entered at the time of insertion to the format like ‘–/–/—-‘.

CREATE TABLE JOBHISTORY(
EMPLOYEE_ID VARCHAR(10),
STARTDATE DATE,
ENDDATE DATE,
JOB_ID VARCHAR(10), -- FOREIGN KEY REFERENCES DBO.JOBS(JOB_ID),
DEPARTMENT_ID VARCHAR(10)
)

SELECT * FROM JOBHISTORY

INSERT INTO JOBHISTORY VALUES
('111','2020-12-12','2020-06-20','TRANEE001','DEVELOP007')
DROP TABLE JOBHISTORY

--PRACTICE-3
--Write a SQL statement to create a table named jobs including columns JobId, JobTitle, MinSalary and MaxSalary, 
--and make sure that, the default value for JobTitle is blank and MinSalary is 8000 and MaxSalary is NULL will be entered automatically at the time of insertion 
--if no value assigned for the specified columns.

CREATE TABLE JOBS(
JOB_ID VARCHAR(10),
JOB_TITLE CHAR(20) CONSTRAINT D_VALUE DEFAULT 'BLANK',
MIN_SALARY MONEY DEFAULT '8000',
MAX_SALARY MONEY ,
)
SELECT * FROM JOBS

INSERT INTO JOBS(JOB_ID) VALUES
('DESIGN1001'),
('TRAINEE007')

TRUNCATE TABLE JOBS
DROP TABLE JOBS
--ERROR
--DECLARE 
--@MON1  MIN_SALARY,
--DEFAULT @MON1=8000

ALTER TABLE JOBS
DROP CONSTRAINT D_VALUE
--ALTER WAY TO SET DEFAULT
ALTER TABLE JOBS
ADD CONSTRAINT D_VALUE DEFAULT 'NEW BLANK' FOR JOB_TITLE



--PRACTICE-4
--Write a SQL statement to create a table employees including columns
--Employee_Id, FirstName, LastName, Email, PhoneNumber, Hire_Date, Job_Id, Salary, Commission, Manager_Id and Department_Id 
--and make sure that, the Employee_Id column does not contain any duplicate value at the time of insertion, 
--and the foreign key column DepartmentId, reference by the column DepartmentId of Departments table, can contain only those values which are exists in the Department table 
--and another foreign key column JobId, referenced by the column JobId of jobs table, can contain only those values which are exists in the jobs table.

CREATE TABLE DEPARTMENTS(
DEPARTMENT_ID VARCHAR(20) PRIMARY KEY --NOT NULL + UNIQUE = CANDIDATE KEY
)

CREATE TABLE JOB(
JOB_ID	VARCHAR(20) PRIMARY KEY --NOT NULL + UNIQUE = CANDIDATE KEY
)

CREATE TABLE EMPLOYEES(
EMPLOYEE_ID	VARCHAR(20) UNIQUE,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
EMAIL VARCHAR(25),
PHONE_NUMBER BIGINT,
HIRE_DATE DATE,
JOB_ID VARCHAR(20) CONSTRAINT FK_JOB_ID_KEY FOREIGN KEY REFERENCES DBO.JOB(JOB_ID),
SALARY BIGINT,
COMMISSION DECIMAL(2,2),
MANAGER_ID VARCHAR(20),
DEPARTMENT_ID VARCHAR(20) CONSTRAINT FK_DEP_ID_KEY FOREIGN KEY REFERENCES DBO.DEPARTMENTS(DEPARTMENT_ID)
)

SELECT * FROM DEPARTMENTS,JOB,EMPLOYEES

INSERT INTO EMPLOYEES(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION,MANAGER_ID,DEPARTMENT_ID) VALUES
('TRAINEE100','HARSH','PRAJAPATI','harshpp.2412@gmail.com',1234567890,'2021-08-16','DEVELOPER001',8000,01.10,'ABC001','NODEJSREACTJS')

ALTER TABLE EMPLOYEES
DROP CONSTRAINT FK_JOB_ID_KEY,FK_DEP_ID_KEY

DROP TABLE JOB,DEPARTMENTS,EMPLOYEES

--ALTER STATEMENT
--NUMBER-1
--Write a SQL statement to add a foreign key constraint named fk_job_id on JobId column of JobHistory table referencing to the primary key JobId of jobs table.

ALTER TABLE JOBS
ALTER COLUMN JOB_ID VARCHAR(10) NOT NULL

ALTER TABLE JOBS
ADD CONSTRAINT J_VALUE PRIMARY KEY(JOB_ID)

ALTER TABLE JOBHISTORY
ADD CONSTRAINT fk_job_id FOREIGN KEY (JOB_ID) REFERENCES DBO.JOBS(JOB_ID)


--NUMBER-2
--Write a SQL statement to drop the existing foreign key fk_job_id from JobHistory table on JobId column which is referencing to the JobId of jobs table.

ALTER TABLE JOBHISTORY
DROP CONSTRAINT fk_job_id

--NUMBER-3
--Write a SQL statement to add a new column named location to the JobHistory table.

ALTER TABLE JOBHISTORY
ADD LOCATION1 VARCHAR(20)

SELECT * FROM JOBHISTORY