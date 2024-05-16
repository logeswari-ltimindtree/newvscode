public class ParentToChild {
    public void getInvoice(){
        list<Invoice__c> inc = [select id, name,(select id, name from SellItems__r) from Invoice__c];
            for(Invoice__c i : inc){
                System.debug('The invoice id is'+i.id+'name is'+i.id+'sellitem is'+i.SellItems__r);
            }
    }
}