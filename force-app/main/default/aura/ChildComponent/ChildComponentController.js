({
	handleclick : function(component, event, helper) {
    var evt = component.getEvent("childEvent");
    evt.setParams({"Message" : "Welcome to Aura tutorials"+component.get("v.Email") });
    evt.fire();
    console.log("Event fired");
    }
    })