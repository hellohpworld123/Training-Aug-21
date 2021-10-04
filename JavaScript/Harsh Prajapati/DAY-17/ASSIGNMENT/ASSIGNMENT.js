// Design a form for storing employee details. (EmployeeID, Employee name, age, Gender, designation, salary, location, Email ID, Date of Joining and contact number)
// Validation required

function validate()
{
    
    // EmployeeID should be at least 5 character long. use regular Expression
    var employee_name = document.getElementById("name").value;
    var name_regx = /[a-zA-Z][a-zA-Z][a-zA-Z][a-z\sA-Z][a-zA-Z]/;
    if (name_regx.test(employee_name))
    {}
    else
    {
        alert("Invalid UserName");
    }
    
    // Age should be a number
    var age = document.getElementById("age").value;
    var age_regx = /[0-9][0-9][0-9]/;
    if (age_regx.test(age))
    {}
    else
    {
        alert("Please enter age in number formate only");
    }
    
    // Email ID should be in proper format
    var Email = document.getElementById("email").value;
    var email_regx = /[a-z0-9][@][.com]/;
    if (email_regx.test(Email))
    {}
    else
    {
        alert("Please enter correct Email-I'd");
    }

    // Contact Number should be in 10 digits proper format
    var contact_number = document.getElementById("email").value;
    var contact_regx = /[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]/;
    if (contact_regx.test(contact_number))
    {}
    else
    {
        alert("Valid only 10 digits");
    }
}