
console.log(a*b)
// alert("hello hp");
console.log("Hello hp-->",5*4,"<--multiplication")

//Javascript variable
// Containers to store data values
var a = 34;
var b = 2;
console.log("Sum",a+b);

// DataTypes in Javascript
var str1 = "Hello harsh, string eg here";
var str2 = "hello 2nd string is here";
console.log(str1 +".....", str2);

var hp = true;
var hp2 = false;
console.log(hp,hp2);

// Datatypes in Javascript
// 1. Primitive Datatypes:undefined,null,number,string,boolean,symbol
// 1. Primitive Datatypes:Arrays and Objects

var array =[11,22,33,44,55,66];

// Operator in Javascript
// Arithmeticm Operator
var a = 100;
var b = 10;
console.log("Here Adiition-->",a+b);
console.log("Here Substraction-->",a-b);
console.log("Here Multiplication-->",a*b);
console.log("Here Division-->",a/b);

// Assignment Operator
var c = a;
c+=2; //c = c + 2;
c-=2; //c = c - 2;
console.log(c);


// Logical Operator

// Logical AND
console.log(true && true);
console.log(true && false);
console.log(false && true);
console.log(false && false);

// Logical OR
console.log(true || true);
console.log(true || false);
console.log(false || true);
console.log(false || false);

// Logical NOT
console.log(!false);
console.log(!true);



// Function In Javascript
function avg(a,b)
{
    return(a+b)/2;
}
var c1 = avg(2,4);
var c2 = avg(20,25);
console.log(c1,"&",c2);



// Conditional in Javascript
var age = 18
if (age > 18)
{
    console.log("You can vote");
}
else if(age == 18)
{
    console.log("You are mature enough for voting");
}
else{
    console.log("You are kid...");
}




// For loop

var array = [1,2,3,4,5,6,7,8];
// console.log(array);
for (let i = 0; i < array.length; i++) {
    // const element = array[i];
    // console.log(element);
    console.log(array[i]);
}
for(var i=0; i<array.length;i++){
    console.log(array[i]);
}

// For Each
array.forEach(function(element){
console.log(element);    
});


// const is used for to provide fixed value which we can't change it
const a=0;
a++;

// while loop
let j = 0;
while (j<array.length) {
console.log(array[j]);
j++;
}

//do while
do {
    console.log(array[j]);
} while (j<array.length);