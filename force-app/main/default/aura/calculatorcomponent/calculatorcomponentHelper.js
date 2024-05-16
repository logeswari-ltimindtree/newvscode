({
	helperMethod : function(component) {
		var Number1 = component.get("v.Number1");
        var Number2 = component.get("v.Number2");
       
        var Result = Number1 + Number2;
        component.set("v.Result",Result);
        
        component.set("v.Number1","");
        component.set("v.Number2","");
        
        console.log(component);
	},
    sal : function(component2){
        var Number1 = component.get("v.Number1");
        var Number2 = component.get("v.Number2");
       
        var Result = Number1 -Number2;
        component.set("v.Result",Result);
            
        component.set("v.Number1","");
        component.set("v.Number2","")
        console.log(component2);
    }
})