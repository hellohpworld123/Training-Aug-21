USE DAY10_CURSOR

-->>Declare cursor
--Fetch
--Open
--Deallocate

-->SQL Cursor Life Cycle
--The following steps are involced in a SQL cursor life cycle. 

-->Declaring Cursor
--A cursor is declared by defining the SQL statement.
DECLARE cursor9 CURSOR SCROLL_LOCKS
FOR
SELECT EMPLOYEE_ID ,  FIRST_NAME , SALARY  FROM Employee

-->Opening Cursor
--A cursor is opened for storing data retrieved from the result set.
DECLARE cur CURSOR 
FOR
SELECT * FROM Employee
OPEN cur

-->Fetching Cursor
--When a cursor is opened, rows can be fetched from the cursor one by one or in a block to do data manipulation.
FETCH NEXT FROM cur

--<<OR>>--

DECLARE @id int,@name1 varchar(20),@name2 varchar(20),@sal int,@date Date,@dept varchar(20),@mid int
FETCH NEXT FROM cur	into @id,@name1,@name2,@sal,@date,@dept,@mid
PRINT @id 
PRINT @name1

-->Closing Cursor
--The cursor should be closed explicitly after data manipulation.
CLOSE cur

-->Deallocating Cursor
--Cursors should be deallocated to delete cursor definition and release all the system resources associated with the cursor.
DEALLOCATE cur
