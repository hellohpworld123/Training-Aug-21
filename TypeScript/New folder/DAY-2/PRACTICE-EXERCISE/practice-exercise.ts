// Class in TypeScript
// class employee{
//     empCode: number;
//     empName: string;

//     constructor(code:number,name:string){
//         this.empCode=code;
//         this.empName=name;
//     }
//     getSalary():number {
//         return 1000;
//     }
// }

// let emp = new employee(10,'harsh prajapati');
// console.log(emp);


// class Point {
//     x:number;
//     y:number;
    
//     draw() {
//         console.log('X is :' + this.x + ' Y is :' + this.y);
        
//     }

//     getDistance(another:Point) {
//         // ...
//     }
// }

// let point = new Point();
// point.x=1,
// point.y=2
// point.draw();




// Tuple
// Tuple is a datatype which is includes two sets of vlaues of different data types.

// // Declare a tuple
// let a:[string, number, boolean];
// // Initialize it
// a = ['harsh',111,true];

// var employee: [number,string][];
// employee = [[1,'Harsh'],[2,'Hp'],[3,"hello world"]];
// console.log(employee);

// // Union
// var employee: [number,string][];
// employee = [[1,'Harsh'],[2,'Hp'],[3,"hello world"]];
// console.log(newArrays);

// let code: (string | number);
// code = 123;
// code = "abc";
// code = false;   //compile errror

// let empId: string | number;
// empId = 111;
// empId = 'E111';
// empId = true;   //compile error

// function display(value: (number | string)) {
//     if(typeof(value) === "number")
//     console.log('The given value is of type number.');

//     else if(typeof(value) === 'string')
//     console.log('The given value is of type string.');
// }
// display(123);
// display("ABC");

// Enums
// Enums are one of the few features TypeScript has which is not a type-level extension of JavaScript. 
enum Color{
    Red,Green, Blue
};
let c:Color;
c = Color.Green;
Color.Red;

enum DayOfTheWeek {
    MON=101, TUE, WEB, THU, FRI, SAT
}
let day : DayOfTheWeek;
day = DayOfTheWeek.MON;

if (day === DayOfTheWeek.MON) {
    console.log('Go to Work !!!');
}


// Interface Example
// We can't include calculation in interface but function declaration is possible

// Interface and class
interface IEmployee {
    empCode: number;
    name: string;
    getSalary: (number)=>number;
}
class Employee implements IEmployee {
    empCode:number;
    name:string;

    constructor(code:number, name:string){
        this.empCode= code;
        this.name = name;
        console.log(name);
        console.log(code);
    }

    getSalary(empCode:number):number {
        return 20000;
    }
}
let emp = new Employee(1,"Harsh");
console.log(emp.getSalary(20000));

// // Interface as Type
// interface KeyPair{
//     key:number;
//     value:string;
// }
// let kv1: KeyPair = {key:1,value:"Hello world"};

// // Interface as Function Type
// interface KeyValueProcessor
// {
//     (key: number, value: string): void;
// };

// function addKeyValue(key:number, value:string):void {
//     console.log('addKeyValue: key = ' + key + ', value = ' + value)
// }

// let kvp: KeyValueProcessor = addKeyValue;
// kvp(1,'Bill');   // Output: addKeyValue; key = 1, value = Bill

// // Interface For Array type
// interface Numlist {
//     [index:number]:number
// }
// let numArr: Numlist = [1,2,3];
// console.log(numArr[1]);
// numArr[0];

// // Interface For Creating Properties
// interface IEmployee {
//     empCode: number;
//     empName: string;
//     empDept?: string;
//     readonly SSN: number;
// }

// let empObj1: IEmployee = {
//     empCode:1,
//     empName: 'Harsh',
// }

// // Extenging Interfaces
// // Interafces can extend one or more interfaces. This make writing interfaces flexible and reuseable.
// interface IPerson {
//     name:string;
//     gender: string;
// }

// interface IEmployee extends IPerson {
//     empCode: number;
// }

// let empObj: IEmployee ={
//     empCode:1,
//     name:"Harsh",
//     gender:"Male"
// }


// Function
// function add(a:number,b:number) {
//     console.log(a+b);
// }
// // Anonymous Function
// let sum = function (a:number, b:number) {
//     console.log(a+b);
// }


// Counstructor

// class Point {
//     x:number;
//     y:number

//     constructor(x:number,y:number) {
//         this.x= x;
//         this.y =y;
//     }

//     sum() {
//         console.log('sum of two values is : ', this.x + this.y);
//     }
// }

// let point = new Point(2,4);
// point.sum();