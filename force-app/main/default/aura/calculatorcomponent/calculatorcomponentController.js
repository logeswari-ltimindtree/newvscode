({
	myadd : function(component, event, helper) {
		var Number1 = component.get("v.Number1");
        var Number2 = component.get("v.Number2");
       
        var Result = Number1 + Number2;
        component.set("v.Result",Result);
        
        component.set("v.Number1","");
        component.set("v.Number2","");
        console.log(component);
       
        //helper.helperMethod(component);
        //helper(keyword).helpermethodname(parameter inside the hepler method)
        
 },
    	mysub : function(component, event, helper) {
		/*var Number1 = component.get("v.Number1");
        var Number2 = component.get("v.Number2");
       
        var Result = Number1 -Number2;
        component.set("v.Result",Result);
            
        component.set("v.Number1","");
        component.set("v.Number2","");*/
        helper.sal(component2);
	},
    validate1 :function(component, event, helper){
         let inputcmp = component.find("Number1");
        if (parseInt(inputcmp.get("v.value")) > 24){
        
            inputcmp.set("v.errors",[{message :'Number  cant be greater than 1000'}]);
        }else{
            
            inputcmp.set("v.errors",[{message :''}]);
        }}   
        
     })