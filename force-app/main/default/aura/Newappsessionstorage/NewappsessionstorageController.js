({
	add : function(component, event, helper) {
        //console.log("add");
    	var n1 = parseInt(component.get("v.Number"));
        //console.log(n1);
        
        sessionStorage.setItem("num1",n1);
        component.set("v.Number","");
        
       },
    sub : function(component, event, helper){
        var n2 = parseInt(component.get("v.Number"));
        sessionStorage.setItem("num2",n2);
        component.set("v.Number","");
    },
    
    equals : function(component,event,helper){
        component.set("v.Number",parseInt(sessionStorage.getItem("num1"))+parseInt(component.get("v.Number")));
        //parseInt(sessionStorage.getItem("num1"))+parseInt(component.get("v.Number"));
    }
})