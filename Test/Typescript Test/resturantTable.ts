var resTable: { resId:number, roomType:string, availbleTable:number}[] = [
    {resId:1,roomType: 'Delux with AC',availbleTable:10},
    {resId:2,roomType: 'Delux with Non-AC',availbleTable:15},
    {resId:3,roomType: 'Only AC',availbleTable:20},
    {resId:4,roomType: 'Non AC',availbleTable:25}
]

interface IResturantTable {
    checkTableAvailble(resturantId:number,roomTypeName:string,numberOfPeople:number):boolean;
    getResturantList();
}

export class ResturantTables implements IResturantTable {
    checkTableAvailble(resturantId,roomTypeName,numberOfPeople):boolean
    {
        var sumOfTable:number;
        var resNumberofTable = resTable.filter(x=> x.resId== resturantId && x.roomType==roomTypeName);
        resNumberofTable.forEach(Element => {
            sumOfTable = sumOfTable + Element.availbleTable;
        });
        if(sumOfTable*6 <= numberOfPeople)
        {
            return false;
        }
        return true;
    }
    getResturantList(){
        resTable.forEach(Element => {
            console.log(`Resturant Id : ${Element.resId} & Type of Room : ${Element.roomType} & Availablity of Table : ${Element.availbleTable}`);
        })
    }
}