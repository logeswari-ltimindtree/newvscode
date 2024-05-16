trigger contactTrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Trigger.isDelete&&Trigger.isafter){
        ContactDelete.preventcontact(Trigger.old);
     }
}