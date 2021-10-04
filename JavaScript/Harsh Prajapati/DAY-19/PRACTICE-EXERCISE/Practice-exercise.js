// Using Function Expression, find the area of circle
var areaOfcicle = function(radius)
{
    return radius*radius*3.14;
}
let result = areaOfcicle(5);
console.log(result);


// Using Function Constructor, find the area of rectangle
const areaOfrectangle = new Function('w', 'l', 'return w * l');

console.log(areaOfrectangle(20,5));

// Explain usage of Function Hosing using example
// In JavaScript, a variable can be declared after it has been used.
// In other words; a variable can be used before it has been declared.
myfunction(5);

function myfunction(y)
{
    console.log(y * y);
}

// Using Function call create employee object with field Name, Address and Designation and pass it to function.

var employee = {
    employeeinfo: function () {
        return this.name, this.address, this.designation;
    }
}
var employee1 = {
    name:"harsh",
    address:"Pethapur",
    designation:"trainee software engineer"
}
console.log(employee.employeeinfo.call(employee1));

// Using Function Apply pass employee object to a function defined in the function.
var person = {
    fullname: function() {
        return this.firstname + " " + this.lastname;
    }
}
var person1 = {
    firstname:"Harsh",
    lastname:"Prajapati"
}
console.log(person.fullname.apply(person1));


// Explain Function closure with practical
function makeCounter() {
    let count = 0;
  
    return function() {
      return count++;
    };
  }
  
  let counter = makeCounter();
  
  alert( counter() ); // 0
//   alert( counter() ); // 1
//   alert( counter() ); // 2
//   alert( counter() ); // 3