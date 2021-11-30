import {generateToken} from './generatetoken';
import {ResturantTables} from './resturantTable';


interface IBooking {
    booking();
}

export class Booking implements IBooking {
    resId:number;
    roomType:string;
    numberOfPeople:number;
    beforeSixHour= new Date();
    beforOneMonth= new Date();
    resturantTable = new ResturantTables();

    constructor(Id:number,Room:string,People:number,) {
        this.resId=Id,
        this.roomType=Room,
        this.numberOfPeople=People
    }

    booking(){
        var isExist = this.resturantTable.checkTableAvailble(this.resId,this.roomType,this.numberOfPeople);

        if(isExist = true)
        {
            this.beforeSixHour.setHours(this.beforeSixHour.getHours()-6);
            // this.beforOneMonth.setMonth(this.beforOneMonth.setMonth() - 1);
            var currentDate = new Date();

            if(this.beforeSixHour <= currentDate || this.beforOneMonth < currentDate)
            {
                console.log(`Booking Sucessfully... & token is : ${generateToken(15)}`);
            }
        }
        else{
            console.log(`Not Enough tables...`);
        }
    }
}