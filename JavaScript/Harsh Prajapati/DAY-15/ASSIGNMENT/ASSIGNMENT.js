// Create an application for performing basic math operations like Addition, Subtraction,   Multiplication and Division.

// Consider following elements:

//  Label : “Please enter first number : ” with Text Box
//  Label : “Please enter second number : ” with Text Box
//  Label : “Please select operation you want to perform : ” with set of Radio Buttons like “Addition”, “Subtraction”, “Multiplication” and “Division” presented in vertical manner.
// Two buttons,  “Calculate” and “Reset”
//  Label: “Result is: ” with final result – Place all the checks to make sure that user enters only numeric values for text boxes. Clicking on “Calculate” button will perform the requested operation and   the result will be displayed below “Calculate” and “Reset” buttons in the form of text,   e.g. : “Result is : 10”. – Clicking on “Reset” button will reset all the form information including radio button   selection and result text.


// Addition Function
function add()
{
    num1 = parseInt(document.getElementById('num1').value);
    num2 = parseInt(document.getElementById('num2').value);
    document.getElementById('result').innerHTML=num1+num2
}

//Substraction Function
function sub()
{
    num1 = parseInt(document.getElementById('num1').value);
    num2 = parseInt(document.getElementById('num2').value);
    document.getElementById('result').innerHTML=num1-num2
}

 //Multiplication Function
function mul()
{
    num1 = parseInt(document.getElementById('num1').value);
    num2 = parseInt(document.getElementById('num2').value);
    document.getElementById('result').innerHTML=num1*num2
}
//Division Function
function div()
{
    num1 = parseInt(document.getElementById('num1').value);
    num2 = parseInt(document.getElementById('num2').value);
    document.getElementById('result').innerHTML=num1/num2
}

// Reset Function
function reset()
{
    document.getElementById('result').innerHTML="reset";
}