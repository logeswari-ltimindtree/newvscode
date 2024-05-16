trigger CampaignTrigger on Campaign (After delete, before delete, after insert, before insert, after update, before update, after undelete) {
    if(Trigger.isAfter&& Trigger.isDelete){
        CampaignTrigger.backupcampaign(Trigger.new);
    }

}