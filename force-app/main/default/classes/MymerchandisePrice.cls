public class MymerchandisePrice implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'select id, Price__c from Merchandis__c';
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<Merchandis__c> mer){
        for(Merchandis__c m:mer){
            m.Price__c=99;
        }
        update mer;
    }
    public void finish(Database.BatchableContext bc){
        
    }
    

}