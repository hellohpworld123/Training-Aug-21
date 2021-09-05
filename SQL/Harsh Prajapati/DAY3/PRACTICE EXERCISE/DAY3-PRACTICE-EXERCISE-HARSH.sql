USE DAY3

--STRING-FUNCTION

--ASCII FOR 7 BIT
SELECT ASCII('A') as A;
SELECT ASCII('a') as a;

--CHAR-NCHAR-
SELECT NCHAR(65) AS A;
SELECT CHAR (97) AS a;

--BMP CHARACTER
SELECT NCHAR(9835);
SELECT CHAR(9835);

--UNICODE FOR MORE THAN 8 BIT 
SELECT UNICODE('a');

--CHARINDEX
SELECT CHARINDEX('SU',LASTNAME) FROM Employees_1;

SELECT CHARINDEX('GER',FirstName,1) FROM Employees_1;

SELECT CHARINDEX('GAR',FirstName,1) FROM Employees_1;

SELECT CHARINDEX('sundy',LASTNAME) FROM Employees_1;

SELECT CHARINDEX('Sundy',LASTNAME) FROM Employees_1;

SELECT CHARINDEX('Sundy',LASTNAME  COLLATE Latin1_General_CS_AS) FROM Employees_1;

SELECT CHARINDEX('sundy','My name is SUNDY '  COLLATE Latin1_General_CS_AS) FROM Employees_1;

SELECT CHARINDEX('Sundy','My name is SUNDY ') FROM Employees_1;

--CONCAT
SELECT CONCAT(FirstName,' ',LastName) AS FullName FROM Employees_1;
SELECT CONCAT(FirstName,CHAR(13),LastName) AS FullName FROM Employees_1; ---------------------->>>>>>>>>NOT UNDERSTAND
SELECT CONCAT(NULL,NULL);
--CONCAT_WS
SELECT CONCAT_WS(' ',FirstName,LastName) FROM Employees_1;
SELECT CONCAT_WS('-',FirstName,LastName) FROM Employees_1;
SELECT CONCAT_WS('-',FirstName,CHAR(13),LastName)NEW FROM Employees_1;   ---------------------->>>>>>>>>NOT UNDERSTAND
SELECT CONCAT_WS('-',NULL,NULL);

--SOUNDEX
SELECT SOUNDEX(FirstName),SOUNDEX(LastName) FROM Employees_1;
SELECT SOUNDEX(FirstName),SOUNDEX(LastName) FROM Employees_1;
SELECT SOUNDEX(EmployeeID) FROM Employees_1;

--DIFFERNCE
SELECT DIFFERENCE(FirstName,LastName),FirstName,LastName FROM Employees_1;
SELECT DIFFERENCE(FirstName,LastName) FROM Employees_1;

--FORMAT
SELECT FORMAT(HireDate,'D'),HireDate FROM Employees_1;
SELECT FORMAT(HireDate,'d'),HireDate FROM Employees_1;
SELECT FORMAT(HireDate,'dd/MM/yyyy'),HireDate FROM Employees_1;
SELECT FORMAT(Salary,'C','en-in'),Salary FROM Employees_1;
SELECT FORMAT(Salary,'C'),Salary FROM Employees_1;
SELECT FORMAT(cast('07:35' as time), N'hh.mm');
SELECT FORMAT(cast('07:35' as time), N'hh:mm');
SELECT FORMAT(cast('07:35' as time), N'hh\.mm');
SELECT FORMAT(cast('07:35' as time), N'hh\:mm'); 
SELECT FORMAT(SYSDATETIME(), N'hh:mm tt');
select FORMAT(CAST('2018-01-01 01:00' AS datetime2), N'yy:hh:mm tt');
select FORMAT(CAST('2018-01-01 14:00' AS datetime2), N'hh:mm tt');
SELECT FORMAT(SYSDATETIME(), N'HH:mm tt');

--LEFT
SELECT LEFT(FirstName,3),FirstName FROM Employees_1; --->Returns the left part of a character string with the specified number of characters.

--LEN -- DATALENGTH
SELECT LEN(FirstName), DATALENGTH(FirstName), FirstName FROM Employees_1; ----> IT'S INCLUDE ONLY CHAR LENGTH
SELECT LEN(CONCAT(FirstName,' ', LastName )), DATALENGTH(CONCAT(FirstName,' ', LastName )),FirstName,LastName FROM Employees_1;-->IT'S INCLUDE SPACE

--LOWER
SELECT LOWER(CONCAT(FirstName,' ',LastName))  FROM Employees_1;

--LTRIM
SELECT LTRIM('    HELLO WORLD, HP HERE');
SELECT '    HELLO WORLD, HP HERE';

--PATINDEX
SELECT PATINDEX('%i%',FirstName),FirstName FROM Employees_1;---> SPECIFIED RANK FOR SPECIFIEF LEATTER
SELECT PATINDEX('%[^ a-zA-Z]%',FirstName),FirstName FROM Employees_1;----> ^ MEANS -NOT INCLUDED

--QUOTENAME
SELECT QUOTENAME(FirstName)QUOTE,FirstName FROM Employees_1;------O/P-->DATA WILL BE IN SHOW IN SQUERE BRACKET

--REPLACE
SELECT REPLACE(FirstName,'ste','Sun'),FirstName FROM Employees_1
WHERE  FirstName LIKE '%STE%';

--REPLICATE
SELECT REPLICATE('Hi',5) + ' ' + FirstName FROM Employees_1 ;   ------O/P-->HiHiHiHiHi Steven

--REVERSE
SELECT REVERSE(FirstName),FirstName FROM Employees_1;

--RIGHT
SELECT RIGHT(FirstName,3) FROM Employees_1;

--RTRIM
SELECT RTRIM('HI HELLO OR THANK YOU          ');

--SPACE
SELECT FirstName+SPACE(3)+LastName FROM Employees_1; ----->TO PROVIDE SOME SPACE

--STR
SELECT STR(Salary,4),Salary FROM Employees_1;---> IT'S SHOWS NUMBER OF VALUES REPRESENT
SELECT STR(Salary,4,3),Salary FROM Employees_1;             

--STRING_SPLIT
SELECT FirstName,value FROM Employees_1 CROSS APPLY string_split(FirstName,'a');---> FOR USING STRING SPLIT

--STUFF
SELECT STUFF(FirstName,2,5,LastName), FirstName,LastName FROM Employees_1;
--The STUFF function inserts a string into another string. 
--It deletes a specified length of characters in the first string at the start position 
--and then inserts the second string into the first string at the start position.


--SUBSTRING
SELECT SUBSTRING(FirstName, 2,5), FirstName FROM Employees_1;

--TRANSLATE
SELECT TRANSLATE(FirstName,'ET','AN') , FirstName FROM Employees_1; ------> TO CHAGNE PERTICULAR TEXT OR LETTER

--TRIM
SELECT TRIM('             HI HELLO THANK U               ');

--UPPER
SELECT UPPER(FirstName) FROM Employees_1;



----DATE AND TIME FINCTION

--SYSDATETIME
SELECT SYSDATETIME(); -----------> CURRENT DATE AND TIME

--SYSDATETIMEOFFSET
SELECT SYSDATETIMEOFFSET();

--SYSUTCDATETIME
SELECT SYSUTCDATETIME();

--CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP; -----------> CURRENT DATE AND TIME WITH TIME-STAMP 

--GETDATE
SELECT GETDATE();

--GETUTCDATE
SELECT GETUTCDATE();

--DATENAME
SELECT DATENAME(YEAR,HireDate) ,HireDate from Employees_1; ----------> DATE_NAME PROVIDE STRING VALUE 
SELECT DATENAME(QUARTER,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(MONTH,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(DAYOFYEAR,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(DAY,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(WEEK,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(WEEKDAY,HireDate) ,HireDate from Employees_1;
SELECT DATENAME(HOUR,SYSDATETIME()) from Employees_1;
SELECT DATENAME(MINUTE,SYSDATETIME()) from Employees_1;
SELECT DATENAME(SECOND,SYSDATETIME())  from Employees_1;                              
SELECT DATENAME(MILLISECOND,SYSDATETIME())  from Employees_1;                     
SELECT DATENAME(MICROSECOND,SYSDATETIME())  from Employees_1;                     
SELECT DATENAME(NANOSECOND,SYSDATETIME())  from Employees_1;                               
SELECT DATENAME(TZOFFSET,SYSDATETIME()) from Employees_1;                                
SELECT DATENAME(ISO_WEEK,SYSDATETIME()) from Employees_1;                                

--DATEPART
SELECT DATEPART(YEAR,HireDate) ,HireDate from Employees_1;    ----------> DATE_PART PROVIDE INT VALUE 
SELECT DATEPART(QUARTER,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(MONTH,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(DAYOFYEAR,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(DAY,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(WEEK,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(WEEKDAY,HireDate) ,HireDate from Employees_1;
SELECT DATEPART(HOUR,SYSDATETIME()) from Employees_1;
SELECT DATEPART(MINUTE,SYSDATETIME()) from Employees_1;
SELECT DATEPART(SECOND,SYSDATETIME())  from Employees_1;
SELECT DATEPART(MILLISECOND,SYSDATETIME())  from Employees_1;
SELECT DATEPART(MICROSECOND,SYSDATETIME())  from Employees_1;
SELECT DATEPART(NANOSECOND,SYSDATETIME())  from Employees_1;
SELECT DATEPART(TZOFFSET,SYSDATETIME()) from Employees_1;            ------------->>> DIFFERENCE BETWEEN DATEPART AND DATENAME
SELECT DATEPART(ISO_WEEK,SYSDATETIME()) from Employees_1;

--DAY
SELECT DAY(SYSDATETIME()) from Employees_1;

--MONTH
SELECT MONTH(SYSDATETIME()) from Employees_1;

--YEAR
SELECT YEAR(SYSDATETIME()) from Employees_1;

--DATE FROM PARTS
SELECT DATEFROMPARTS('1999','1','14');
SELECT DATEFROMPARTS(1999,1,14);
SELECT DATEFROMPARTS(1999,'1',14);

--DATETIME 2 FROM PARTS
SELECT DATETIME2FROMPARTS(1999,1,14,14,30,54,50,6);

--DATE TIME FROM PARTS
SELECT DATETIMEFROMPARTS(1999,1,14,14,30,54,50);

--DATE TIME OFF SET FROM PARTS
SELECT DATETIMEOFFSETFROMPARTS(1999,1,14,14,30,54,10,5,40,7);

--SMALL DATE TIME FROM PARTS
SELECT SMALLDATETIMEFROMPARTS(1999,1,14,14,30);

--TIME FROM PARTS
SELECT TIMEFROMPARTS(14,30,14,500,5);

--DATEDIFF
SELECT DATEDIFF(WEEKDAY,SYSDATETIME(),'1999-01-13');
SELECT DATEDIFF(YEAR,'2025-02-23','1999-01-13');

--DATEDIFF_BIG
SELECT DATEDIFF_BIG(WEEKDAY,SYSDATETIME(),'1999-01-13')
SELECT DATEDIFF_BIG(YEAR,'2025-02-23','1999-01-13');

--DATEADD
SELECT DATEADD(DAY,10,SYSDATETIME());

--EOMONTH
SELECT EOMONTH(SYSDATETIME(),5);-----> TO ADD MONTH INTO CURRENT MONTH

--SWITCHOFFSET
--SELECT SWITCHOFFSET(SYSDATETIMEOFFSET(),'-5:00');

--TODATETIMEOFFSET	
--SELECT TODATETIMEOFFSET	(SYSDATETIME(),'+500');

--DATEFIRST
SET DATEFIRST 5;
SELECT @@DATEFIRST;

SELECT @@DATEFIRST;
--LANGUAGE
SELECT @@LANGUAGE AS 'Language Name';  

SET LANGUAGE Français;
SELECT DATENAME(month, SYSDATETIME()) AS 'Month Name' ; 

SET LANGUAGE us_english;
SELECT DATENAME(month, SYSDATETIME()) AS 'Month Name' ; 
--sp_helplanguage
sp_helplanguage

--ISDATE
SELECT ISDATE(Salary) FROM Employees_1;                           

SELECT ISDATE(FirstName) FROM Employees_1;                           

SELECT ISDATE(HireDate) FROM Employees_1;                           

SELECT ISDATE(SYSDATETIME());                             

SELECT ISDATE('1999-01-01')


----MATH-FUNCTION
--ABS                ---> ABSOLUTE VALUE
SELECT ABS(-6.78);         ----> PROVIDE POSITIVE VALUES

--ACOS  ------->>>>>    function that returns the angle, in radians, whose cosine is the specified float expression.
DECLARE @COS FLOAT;		
SET @COS = -1.0;
SELECT ACOS(@COS);

--ASIN     ------->>>>>    A function that returns the angle, in radians, whose sine is the specified float expression.
DECLARE @SIN FLOAT;
SET @SIN = -1.0;
SELECT ASIN(@SIN);

--ATAN     ------->>>>>    A function that returns the angle, in radians, whose tangent is a specified float expression.
DECLARE @TAN FLOAT;
SET @TAN = -1.0;
SELECT ASIN(@TAN);

--ATN2     
------->>>>>    Returns the angle, in radians, between the positive x-axis and the ray from the origin to the point (y, x),
 --where x and y are the values of the two specified float expressions.
DECLARE @X FLOAT = 1.0, @Y FLOAT = -1.0;
SELECT ATN2(@X, @Y);
 
 --CEILING     ------->>>>>  This function returns the smallest integer greater than, or equal to, the specified numeric expression.
 SELECT CEILING($123.55), CEILING(-123.45), CEILING(5.4); 

 --COS
DECLARE @CS FLOAT = 1.0;   ------->>>>> PROVIDE RADIAN BUT IN TRIGOMAIC VALUE
SELECT COS(@CS);

 --COT
DECLARE @CT FLOAT = 1.0;
SELECT COT(@CT);

--DEGREES
SELECT DEGREES(PI()/2); ---> PROVIDE DEGREE VALUE

--EXP
SELECT EXP(1);     --->   Returns the exponential(ઘાત) value of the specified float expression.

--FLOOR    ---> Returns the largest integer less than or equal to the specified numeric expression.
SELECT FLOOR(123.45), FLOOR(-123.45), FLOOR($123.65); 

--LOG
SELECT LOG(3);
SELECT LOG(3,2); ---> (VALUE,BASE)

--LOG10
SELECT LOG10(3);

--PI
SELECT PI();

--POWER
SELECT POWER(2,4);

--RADIANS
SELECT RADIANS(90);

--RAND
SELECT RAND(EmployeeID) FROM Employees_1;

--ROUND
SELECT ROUND(123.9994, 3), ROUND(123.9995, 3);       
SELECT ROUND(123.4545, 2), ROUND(123.45, -2);             
SELECT ROUND(5.4445,1), ROUND(5.55,2), ROUND(5.65,2)         

--SIGN
SELECT SIGN(-125), SIGN(0), SIGN(564); 

--SIN
SELECT SIN(45.175643);

--SQRT
SELECT SQRT(1.00), SQRT(10.00);

--SQUARE
SELECT SQUARE(4.00), SQUARE(-10.00);

--TAN
SELECT TAN(45.175643);

--SYSTEM-FUNCTION
--PARTITION --Do Not UnderStand
CREATE PARTITION FUNCTION RangePF1 ( INT )  
AS RANGE FOR VALUES (10, 100, 1000) ;   
SELECT $PARTITION.RangePF1 (150);  

--ERROR_PROCEDURE
IF OBJECT_ID ( 'usp_ExampleProc', 'P' ) IS NOT NULL   
    DROP PROCEDURE usp_ExampleProc;   
  
-- Create a stored procedure that   
-- generates a divide-by-zero error.  
CREATE PROCEDURE usp_ExampleProc  
AS  
    SELECT 1/0;  
  
BEGIN TRY  
    -- Execute the stored procedure inside the TRY block.  
    EXECUTE usp_ExampleProc;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_PROCEDURE() AS ErrorProcedure;  
END CATCH;  

--@@ERROR  
IF @@ERROR = 347
	BEGIN
	PRINT N'tHIS IS ERROR';
	END

--ERROR_SEVERITY
--ERROR_STATE 
--ERROR_LINE
--ERROR_MESSAGE
--ERROR_NUMBER
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber,  
        ERROR_SEVERITY() AS ErrorSeverity,  
        ERROR_STATE() AS ErrorState,  
        ERROR_PROCEDURE() AS ErrorProcedure,  
        ERROR_LINE() AS ErrorLine,  
        ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  

--@@IDENTITY  
SELECT @@IDENTITY AS 'Identity'; 

--@@PACK_RECEIVED  
SELECT @@PACK_RECEIVED AS 'Packets Received'; 

--FORMATMESSAGE
SELECT FORMATMESSAGE('This is the %s and this is the %s.', 'first variable', 'second variable') 
SELECT FORMATMESSAGE('Signed int %i, %d %i, %d, %+i, %+d, %+i, %+d', 5, -5, 50, -50, -11, -11, 11, 11);
SELECT FORMATMESSAGE('Signed int with up to 3 leading zeros %03i', 5);  
SELECT FORMATMESSAGE('Signed int with up to 20 leading zeros %020i', 5);  
SELECT FORMATMESSAGE('Signed int with leading zero 0 %020i', -55);  
SELECT FORMATMESSAGE('Bigint %I64d', 3000000000);
SELECT FORMATMESSAGE('Unsigned int %u, %u', 50, -50);  
SELECT FORMATMESSAGE('Unsigned octal %o, %o', 50, -50);  
SELECT FORMATMESSAGE('Unsigned hexadecimal %x, %X, %X, %X, %x', 11, 11, -11, 50, -50);  
SELECT FORMATMESSAGE('Unsigned octal with prefix: %#o, %#o', 50, -50);  
SELECT FORMATMESSAGE('Unsigned hexadecimal with prefix: %#x, %#X, %#X, %X, %x', 11, 11, -11, 50, -50);  
SELECT FORMATMESSAGE('Hello %s!', 'TEST');  
SELECT FORMATMESSAGE('Hello %20s!', 'TEST');  
SELECT FORMATMESSAGE('Hello %-20s!', 'TEST');  

--@@ROWCOUNT   ROWCOUNT_BIG
SELECT @@ROWCOUNT;

SELECT ROWCOUNT_BIG();
--GET_FILESTREAM_TRANSACTION_CONTEXT
--//SELECT GET_FILESTREAM_TRANSACTION_CONTEXT();

--@@TRANCOUNT
BEGIN TRAN 
	PRINT @@TRANCOUNT;
SELECT @@TRANCOUNT;

--GETANSINULL
SELECT GETANSINULL();
SELECT GETANSINULL('sandy');

--BINARY_CHECKSUM
SELECT BINARY_CHECKSUM(*) FROM Employees_1;

--HOST_ID
SELECT HOST_ID();

--CHECKSUM
SELECT CHECKSUM(*) FROM Employees_1;

--HOST_NAME
SELECT HOST_NAME();

--COMPRESS --DECOMPRESS
SELECT COMPRESS(FirstName) FROM Employees_1;

--SELECT DECOMPRESS(FirstName) FROM Employees; ONLY FOR MAX DATATYPE


--ISNULL
SELECT ManagerID,ISNULL(ManagerID,'100') FROM Employees_1;

--CONNECTIONPROPERTY
SELECT   
ConnectionProperty('net_transport')  ,  
ConnectionProperty('protocol_type'), 
ConnectionProperty('local_net_address')  ,  
ConnectionProperty('auth_scheme'), 
ConnectionProperty('local_tcp_port')  ,  
ConnectionProperty('client_net_address'), 
ConnectionProperty('physical_net_transport')  ;

--ISNUMERIC
SELECT ISNUMERIC(Salary) FROM Employees_1;
SELECT ISNUMERIC(FirstName) FROM Employees_1;

--CONTEXT_INFO
SET CONTEXT_INFO 45;
SELECT CONTEXT_INFO();

SELECT CONTEXT_INFO();

--CURRENT_REQUEST_ID
SELECT CURRENT_REQUEST_ID();

--MIN_ACTIVE_ROWVERSION
SELECT MIN_ACTIVE_ROWVERSION()

--NEWID
-- Creating a local variable with DECLARE/SET syntax.  
DECLARE @myid uniqueidentifier  
SET @myid = NEWID()  
PRINT 'Value of @myid is: '+ CONVERT(varchar(255), @myid)  

--CURRENT_TRANSACTION_ID  
SELECT CURRENT_TRANSACTION_ID( ) 

--SESSION_CONTEXT(N'key')  
SELECT SESSION_CONTEXT(N'key') ; 
-- Creating a local variable with DECLARE/SET syntax. 
--NEWSEQUENTIALID() --style
--CREATE TABLE myTable (ColumnA uniqueidentifier DEFAULT NEWSEQUENTIALID()); ;

--SESSION_ID ( ) 
SELECT SESSION_USER ;

--XACT_STATE
SELECT XACT_STATE() ;