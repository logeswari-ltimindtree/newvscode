trigger MerchandiseTri on Merchandis__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    if(Trigger.isDelete&& Trigger.isAfter){
            TriggerDemo.insertMerchandiseBkup(Trigger.oldmap);
     }

}