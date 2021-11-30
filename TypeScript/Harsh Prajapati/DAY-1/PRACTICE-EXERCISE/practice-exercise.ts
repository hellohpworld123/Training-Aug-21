// function log(message) {
//     console.log(message);
// }

// var message = 'Hello world';
// log(message)

// function doSomething() {
//     for(var i =0;i<5;i++){
//         console.log(i);
//     }
//     console.log('Finally: ' + i);   
// }
// doSomething();

// let count = 5;
// count = 'a' --> we can't do this like Java

// let a:number;
// let b:boolean;
// let c:string;
// let d:any;
// let e:number[]=[1,2,3];
// let f:any[]=[1,true,'a',false];

// const ColorRed = 0;
// const ColorGreen = 1;
// const ColorBlue = 2;

// enum Color { Red = 0, Green = 1, Blue = 2, Purple = 3};
// let backgroundColor = Color.Red;

// Type Annotation in TypeScript

// var age: number = 32; // number variable
// var name: string = "John";// string variable
// var isUpdated: boolean = true;// Boolean variable

// Type Annotation of Parameters
// function display(id:number,name:string) {
//     console.log('Id = '+id + ', Name = ' + name);
// }

// Type Annotation in Object
// var employee:{
//     id:number,
//     name:string
// };
// employee={
//     id:100,
//     name:'harsh'
// }

// Two types of assertion
// let message;
// message = 'abc'; //by default this value set to be any
// let endWithC = message.endsWith('c');
// let endsWithC = (<string>message).endsWith('c');
// let alternatively = (message as string).endsWith('c');


// Concept of aerrow function
// let log = function (message) {
//     console.log(message);
// }
// Above eg is used in javascript
// let doLog = (message) => console.log(message);
//   Above and below eg both are same
// let doLog = (message) => {
//     console.log(message);
// }

// Custom Type

// Type Annotation
//Syntax ::::  var variableName: TypeAnnotation = value;
// var age : number =  18;
// var personName : string = "Ziva";
// var isUpdated:boolean = true;

// let first:number = 123;
// let second:number = 0x37CF;  //hexadecimal
// let third:number = 0o377;    //octal
// let fourth:number = 0b111001;  // binary

// console.log(first);     //123
// console.log(second);    //14287
// console.log(third);     //255
// console.log(fourth);    //57

// //  Number Methods
// // toExponential
// // numObj.toExponential([fractionDigits])
// let myNumber: number = 123456;
// console.log(myNumber.toExponential());      //1.23456e+5
// myNumber.toExponential(1);

// // toFixed()
// // numObj.toFixed([digits])
// let myNumber2: number = 10.87457;
// console.log(myNumber2.toFixed(2)); //10.87
// console.log(myNumber2.toFixed(3)); //10.875
// console.log(myNumber2.toFixed(4)); //10.8746

// // toLocalString()
// // numObj.toLocalString([locals [,options]])
// let myNumber3: number = 10637.874;
// myNumber3.toLocaleString(); // 10,667.987 - US English
// myNumber3.toLocaleString('de-DE'); //  10.667,987 - German
// myNumber3.toLocaleString('ar-EG'); //  10667.987 in Arebic

// // toPrecion()
// //numObj.toPrecion([precion])
// let myNumber4: number = 10667.987;
// myNumber4.toPrecision(1); //  1e+1
// myNumber4.toPrecision(2); //  11
// myNumber4.toPrecision(3); //  10.6
// myNumber4.toPrecision(4); //  10.57

// // toString()
// // The toString method returns a string representation of the number in the specified base.
// // numObj.toString([radix])
// let myNumber5: number = 123;
// myNumber5.toString(); // '123'
// myNumber5.toString(2); // '1111011'
// myNumber5.toString(4); // '1323'
// myNumber5.toString(8); // '173'
// myNumber5.toString(16); // '7b'
// myNumber5.toString(36); // '3f'

// valueOf()
// The valueOf method returns the primitive value of the number.
// numObj.valueOf()
// let myNumber6 = new Number(123);
// console.log(myNumber6);
// console.log(myNumber6.valueOf());
// console.log(typeof num)

// let num2 = num.valueOf()
// console.log(num2);
// console.log(typeof num2);


// String/Template String
// let employeeName:string = 'Harsh Prajapati';
// // OR
// let employeeName:string = "Harsh Prajapati";

// let employeeName:string = 'Harsh Prajapati';
// let employeeDept:string = 'Node/React';
// let employeeDesc1:string = employeeName + 'works in the ' + employeeDept + 'department';
// // OR
// let employeeDesc2:string = `${employeeName} works in the ${employeeDept} department...`


// // String Methods

// // charAt()
// // character = str.charAt(index)
// let str: string = 'Hello TypeScript';
// str.charAt(0);   //H
// str.charAt(4);   //o
// console.log('Hello world'.charAt(2));  // l

// // Any

// let something:any = "hello World";
// something:23;
// something:true;

// let arr:any[] = ['Harsh', 1212, true];
// arr.push('Prjapati');
// console.log(arr);  // ['Harsh', 1212, true, 'Prjapati']

// //  Array /Array Methods
// let fruits: string[] = ['Apple','Orange','Banana'];
// //     OR
// let fruits: Array<string> = ['Apple','Orange','Banana'];
// let ids: Array<number> = [10,20,30,40];

// // Multi Type Array
// let values: (string | number)[] = ['Apple', 2, 3, 4, 'Harsh'];
// //     OR
// let values: Array<string | number> = ['Apple', 2, 3, 4, 'Harsh'];

// Inline Annotation
// let drawpoint = (point:{x: number, y:number}) =>{
//     // ...
// }
//       OR
// interface Point{
//     x:number,
//     y:number
// }
// let drawpoint =  (point:Point) =>{
//     // ...
// }

// drawpoint({
//     x:1,
//     y:2
// })

// Classes in TypeScript
// class Point{
//     x:number;
//     y:number

//     draw(){
//         return(this.x + this.y)
//     }

//     // getDistance(another: Point) {
//     //     // ..
//     // }
// }