({
	calculate : function(component, event, helper) {
		var amount = parseInt(component.get("v.Amount"));
        var tenure = parseInt(component.get("v.Tenure"));
        var duration = parseInt(component.get("v.Duration"));
        switch(duration){
            case 1:{
                component.set("v.return",amount*0.12);
                break;
            }
            case 2:{
                component.set("v.return",amount*0.24);
                break;
            }
            default:{
                component.set("v.return",amount*0.32);
                break;
            }
        }
	},
    validate1 :function(component, event, helper){
         let inputcmp = component.find("duration");
        if (parseInt(inputcmp.get("v.value")) > 24){
        
            inputcmp.set("v.errors",[{message :'Value cant be greater than 24'}]);
        }else{
            
            inputcmp.set("v.errors",[{message :''}]);
        }},
    
        
     })