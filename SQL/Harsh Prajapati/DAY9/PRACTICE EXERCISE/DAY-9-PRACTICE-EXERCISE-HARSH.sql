CREATE DATABASE DAY9
USE DAY9

JSON OBJECT
-->JSON OBJECT IS IN : {}   ---CURLY BRACET

JSON.PARSE()
--> THIS METHOD RETURNS JAVASCRIPT ARRAY AND JAVASCRIPT OBJECT ALSO
--    SET @testjson = '{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
--> THIS IS EXAMPLE OF JAVASCRIPT OBJECT

--    const text = '["Ford", "BMW", "Audi", "Fiat"]';
--    const myArr = JSON.parse(text);
--> THIS IS EXAMPLE OF JAVASCRIPT ARRAY

JSON AUTO
--FOR JSON AUTO is used to format the JSON output automatically based on the structure of the SELECT statement

-->>ISJSON
-- Tests whether a string contains valid JSON.
--Does not return errors.
--ISJSON does not check the uniqueness of keys at the same level.
DECLARE @json NVARCHAR(MAX)
SET @json='{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
IF ISJSON(@json)>0
	print 'It is Valid Json'
ELSE 
	print 'It is Invalid'
JSON PATH

-->>JSON VALUE
--WITH OBJECT
DECLARE @json NVARCHAR(MAX)
SET @json='{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
SELECT JSON_VALUE(@json,'$.name') FROM OPENJSON(@json)
--WITH ARRAY
DECLARE @json NVARCHAR(MAX)
SET @json='{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
SELECT JSON_VALUE(@json,'$.skills[0]') FROM OPENJSON(@json);
SELECT JSON_VALUE(@json,'$.skills[0]'),JSON_VALUE(@json,'$.skills[1]'),JSON_VALUE(@json,'$.skills[2]') FROM OPENJSON(@json)

-->>JSON QUERY
--OBJECT
DECLARE @json NVARCHAR(MAX)
SET @json='{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
SELECT JSON_QUERY(@json,'$') FROM OPENJSON(@json)
--ARRAY
DECLARE @json NVARCHAR(MAX)
SET @json='{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}'
SELECT JSON_QUERY(@json,'$.skills') FROM OPENJSON(@json)

-->JSON_MODIFY
--THIS FUNCTION IS USED FOR TO CHANGE IN JSON STRING
DECLARE @json NVARCHAR(MAX);
SET @json = '{"info": {"address": [{"town": "Belgrade"}, {"town": "Paris"}, {"town":"Madrid"}]}}';
SET @json = JSON_MODIFY(@json, '$.info.address[1].town', 'London');
SELECT modifiedJson = @json;

-->>OPENJSON
--TO CONVERT JSON DATA INTO TABLE FORMATE
DECLARE @testjson NVARCHAR(MAX)
SET @testjson = '{"name":"John","surname":"Doe","age":45,"skills":["SQL","C#","MVC"]}',
				'{"name":"HP","surname":"H","age":45,"skills":["SQL","C+","MVC"]}'	
SELECT * FROM OPENJSON(@TESTJSON);


NVARCHAR(MAX)
-- TO GET MAXIMUM VALUE(TO JSON FILE)

JSON ROOT
--TO PROVIDE TITLE,NAME 

JSON VALUE
-->LAX MODE--RETURNS AS NULL
-->STRICT MODE--RETURNS AN ERROR

DECLARE @jsonInfo NVARCHAR(MAX)
SET @jsonInfo=N'{ 
     "info":{    
       "type":1,  
       "address":{    
         "city":"gnagar",  
         "country":"india"
       },  
       "interest":["cricket", "books"]  
    }
 }'

-->>BATCH

--VARIABLE DECLARE, SET AND PRINT
DECLARE @SALARY INT
SET @SALARY = 45000
PRINT @SALARY

SELECT Salary=@SALARY  FROM Employees
WHERE Salary>25000;
GO
SELECT * FROM Employees

--IF...ELSE
DECLARE @SALARY INT
SELECT @SALARY =Salary FROM Employees
WHERE EmployeeID = '100'
IF @SALARY>25000
PRINT 'yeah it is greater'
ELSE 
BEGIN 
PRINT 'NEAH ITS NOT'
PRINT 'SALARY='
PRINT @SALARY
END 
GO

--CASE
SELECT
EmployeeID,
CASE Salary
	WHEN 25000 THEN Salary*1.25
	WHEN 15000 THEN Salary*1.15
	WHEN 5000 THEN Salary*1.05
	ELSE Salary*1.01
END
FROM Employees
GO

--WHILE
WHILE (SELECT AVG(Salary) FROM Employees)<15000
BEGIN
	UPDATE Employees
		SET Salary = Salary*2
	SELECT  AVG(Salary) FROM Employees
	IF (SELECT AVG(Salary) FROM Employees)>15000
		BREAK
	ELSE
		CONTINUE
END
PRINT 'DONE TO GREATER 15000';
SELECT Salary FROM Employees;