// Write a JavaScript function to check whether a string is blank or not

function checkstr(enterstring)
{
    if (enterstring.length == 0)
    {
        console.log("True, String is blank");    
    }
    else
    {
        console.log("True, String is not blank");    
    }
}
console.log(checkstr(''));
console.log(checkstr('hello'));


// Write a JavaScript function to split a string and convert it into an array of words

var mytext = "hello world here";
const myArr = mytext.split(" ");
console.log(myArr);

splitstr(mytext)
function splitstr(mytext)
{
    var mysplit = mytext.split(" ")
    console.log(mysplit);
}


// Write a JavaScript function to extract a specified number of characters from a string.

substring()
function substring()
{
    var mytext2 = "hello world here";
    console.log(mytext2.substr(2,6));
}


// Write a JavaScript function to get the current date

todaydate()
function todaydate()
{
    var currentdate = new Date();
    console.log(currentdate);
}

// Try some operation with list like push, pop, shifting, deleting element

var myArr = ["Fan","Camera",34,null,true];
myArr.pop();
console.log(myArr);

myArr.push("Harsh");
console.log(myArr);

myArr.shift();
console.log(myArr);

myArr.unshift("Harsh");
console.log(myArr);