public class InvoiceBatch implements Database.batchable<sObject> {
    public  Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'select id, Closed_Date__c from Invoice__c';
        return Database.getqueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, List<Invoice__c> inn){
        for(Invoice__c ic : inn){
            ic.Closed_Date__c = system.TODAY();
            
        }
        update inn;
    }
    public void finish(Database.BatchableContext bc){
        
    }

}