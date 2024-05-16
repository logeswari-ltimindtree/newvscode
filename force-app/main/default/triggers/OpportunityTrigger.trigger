trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Trigger.isbefore && Trigger.isupdate){
        OpportunityStage.getstage(Trigger.new,Trigger.old);
    }

}