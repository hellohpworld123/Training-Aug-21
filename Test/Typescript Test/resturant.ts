var resturantinfo: { resId:number, resName:string} [] = [
    {resId:101,resName:'Green Apple Resturant'},
    {resId:102,resName:'Greenz Resturant'}]

export class Resturant {
    getResturantList(){
        resturantinfo.forEach(Element => {
            console.log(`Resturant Id: ${Element.resId} and Resturant Name: ${Element.resName}`);
        });
    }
}