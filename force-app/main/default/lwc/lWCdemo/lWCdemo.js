import { LightningElement,api ,track} from 'lwc';
import { myMethod } from 'c/jscomponent';
export default class Lwc1 extends LightningElement {
 
@api  name;
@api age;
@api email;
//create new variable called skillset
 
constructor(){//fires when component loads
super();
    this.name ='Lilly';
    this.age = 25;
    this.email ='lilly@yahoo.com'
    console.log('Constructor is created');
    //initialize skillset with some value this is one way binding from controller to ui
}
connectedCallback(){
     console.log('connectedCallback');
 }
 renderedCallback(){
     this.renderedCallback = false;
     console.log('renderedCallback');
 }
 disconnectedCallback(){
     console.log('disconnectedCallback');
 }
 renderedCallback(){
     console.log('renderedCallback');
}

handleClick(e){
    console.log(this.name +this.email+this.age);
    myMethod();
}
 
handleChange(e){
//ths is to capture change to the name or any field as there is no other 2 way binding
if (e.target.name == 'name'){
this.name = e.target.value;
     }
if (e.target.name == 'age'){
        this.age = e.target.value;
     }
if (e.target.name == 'email'){
this.email = e.target.value;
     }
}
}