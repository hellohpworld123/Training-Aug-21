// Declare array with 5 city names and iterate these values with the help of loop and display it with alert.

var array = ["Gnagar","Abad","Surat","Rajkot","Baroda"];
console.log(array);
var text;
for (let i = 0; i < array.length; i++) {
    text += array[i] + "\n";
}
//         OR
for (const i of array)
{
    console.log(i);    
}

alert("Here content of Array:\n" + text);


// Accept three numbers from the user using prompt, find the greater of these the numbers and do the sum of that numbers which are greater than 40.

function myFunction()
{
    let array1;
    let value1 = parseInt(prompt("Please enter first value:"));
    let value2 = parseInt(prompt("Please enter second value:"));
    let value3 = parseInt(prompt("Please enter third value:"));
    if (value1>value2 && value1>value3)
    {
      array1 = "I'm the first value is greater than all other values",value1;
    }
    else if(value2>value1 && value2>value3)
    {
        array1 = "I'm the second value is greater than all other values",value2;
    }
    else
    {
        array1 = "I'm the third value is greater than all other values",value3;
    }
    document.getElementById("arrayinput").innerHTML = array1;
}

/*
var arrOfnum = [60,50,30];

if (arrOfnum[0] > 40 && arrOfnum[0]>arrOfnum[1] && arrOfnum[0]>arrOfnum[2])
{
    console.log(arrOfnum[0] + " is greater than 40 and greatest in array");
}
else if (arrOfnum[1] > 40 && arrOfnum[1]>arrOfnum[0] && arrOfnum[1]>arrOfnum[2])
{
    console.log(arrOfnum[1] + " is greater than 40 and greatest in array");
}
else if (arrOfnum[2] > 40 && arrOfnum[2]>arrOfnum[0] && arrOfnum[2]>arrOfnum[1])
{
    console.log(arrOfnum[2] + " is greater than 40 and greatest in array");
}

*/

sum=0;
for (const i of arrOfnum)
{
    if (i>40)
    {
        sum=sum+i;
    }     
}
console.log(sum);

//      OR
/*
if (arrOfnum[0] > 40)
{
    if (arrOfnum[1] > 40)
    {
        if (arrOfnum[2] > 40)
        {
            console.log(arrOfnum[0] + arrOfnum[1] + arrOfnum[2]+ " This is the sum of all three values from array");
        }
        else
        {
            console.log(arrOfnum[0] + arrOfnum[1] + " This is the sum of 1st value and 2nd value from array");
        }    
    }
    else if (arrOfnum[2] > 40)
    {
        console.log(arrOfnum[0] + arrOfnum[2] + "This is sum of 1st and 3rd values in array");
    }
    else
    {
        console.log(arrOfnum[0] + " This is 1st value(not sum) from array");
    }
}
else if (arrOfnum[1] > 40)
{
    if (arrOfnum[2] > 40)
    {
        console.log(arrOfnum[1] + arrOfnum[2] + " This is the sum of 2nd value and 3rd value from array");
    }
    else
    {
        console.log(arrOfnum[1] + " This is 2nd value(not sum) from array");
    }
}
else if (arrOfnum[2] > 40)
{
    console.log(arrOfnum[2] + " This is 3rd value(not sum) from array");
}
else
{
    console.log("There is no number in array is greater than 40(last line)");
}

*/

//Splice--> is make changes in main array