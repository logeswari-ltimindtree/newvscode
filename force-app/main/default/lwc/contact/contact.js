import { LightningElement } from 'lwc';

export default class Example extends LightningElement {
    showButton=true;
    handleClick(){ 
        if(this.showButton){
            this.showButton=false;
        }else{
            this.showButton=true;
    }
    
 
}
    handleClickToogle(){
        this.showButton=false;
        myMethod();
    }
    handleClickToogleShow(){
        this.showButton=true;
    }
 
}