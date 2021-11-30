// There is a retail shop which need to manage the inventory, whenever some purchase is being made product quantity should be reduced, if quanity is less than 5 reorder request should be raised.
// Design an interface and classes for the same.

interface Inventory {
    productId:number;
    productName:string;
    productCompany: string;
    productQty: number
    purchase(quantity: number):void;
}

class Shop implements Inventory {
    productId:number;
    productName:string;
    productCompany: string;
    productQty: number
    stoke : number

    // constructor(id:number,name:string,company:string,Qty:number,stoke:number){
    //     this.productId=id;
    //     this.productName=name;
    //     this.productCompany=company;
    //     this.productQty=Qty;
    //     this.stoke=stoke
    // }

    constructor(quantity:number){
        this.stoke =quantity;
        if (this.stoke < 5) {
            this.increasestoke(50);
        }
    }
    purchase(quantity: number):void{
        if (quantity>this.stoke) {
            console.log('Oops !!! Out of stoke');
            this.increasestoke(quantity);
            return;
        }
        // Reduce the stoke
        this.stoke = this.stoke-quantity;
        console.log(`Order has been placed for ${quantity} quantity....`);
        
        // when quantity is below 5
        if (this.stoke<5) {
            this.increasestoke(50);
        }
    }
    increasestoke(quantity:number):void {
        console.log(`increase the stoke for ${quantity}`);
        this.stoke += quantity;
        this.stoke = this.stoke - quantity;
        console.log(`Order has been placed for ${quantity} quantity....`);
    }
}

var shopping = new Shop(70);
shopping.purchase(11);
shopping.purchase(55);