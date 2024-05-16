({
    handleClick : function(component, event, helper) {
        
        let action = component.get("c.getname");
        action.setParams({email : component.get("v.Email")});
        
        action.setCallback(this,function(a){
                           component.set("v.LastName",a.getReturnValue());  
        });
    
     $A.enqueueAction(action);
    
}
 })