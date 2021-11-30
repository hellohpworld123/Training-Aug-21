import {Resturant} from './resturant';
import {ResturantTables} from './resturantTable';
import {Booking} from './booking';

var resId: number;
var roomTypeName: string;
var numberOfPeople:number;

resId=2;
roomTypeName="";
numberOfPeople=20;

var res = new Resturant();
var resTable = new ResturantTables();
var book = new Booking(resId,roomTypeName,numberOfPeople);

res.getResturantList();
console.log();
resTable.getResturantList();
console.log();
console.log(`ResturantID : ${resId}`);
console.log(`Room type : ${roomTypeName}`);
console.log(`Number Of People : ${numberOfPeople}`);
book.booking();
console.log();