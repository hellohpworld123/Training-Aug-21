USE DAY9

-->>ASSIGNMENT
--(1)Create a batch Select Banking as ‘Bank Dept’, Insurance as ‘Insurance Dept’ and Services as ‘Services Dept’ from employee table
SELECT CASE DepartmentName 
WHEN 'BANKING' THEN 'BANK DEPT'
WHEN 'INSURANCE' THEN 'INSURANCE DEPT'
WHEN 'SERVICES' THEN 'SERVICES DEPT'
ELSE DepartmentName
END
FROM Departments

--(2)5 Students Name, Address, City, DOB, Standard need to be inserted in the student table, need to fetch these result from json variable. 
--and select output in the json format

DECLARE @json1 NVARCHAR(MAX) = N'[
	{"ID": 1, "STUDENT_NAME": "HARSH PRAJAPATI", "S_ADDRESS": "G_NAGAR", "CITY":"G_NAGAR", "D_O_B":"01-01-99"},
	{"ID": 2, "STUDENT_NAME": "SANDY PRAJAPATI", "S_ADDRESS": "H_NAGAR", "CITY":"H_NAGAR", "D_O_B":"01-02-99"},
	{"ID": 3, "STUDENT_NAME": "HARSH PATEL",	    "S_ADDRESS": "A_BAD",   "CITY":"A_BAD",   "D_O_B":"01-31-99"}
]'
SELECT * FROM OPENJSON(@json1);