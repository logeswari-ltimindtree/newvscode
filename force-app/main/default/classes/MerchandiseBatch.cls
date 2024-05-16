public class MerchandiseBatch implements Database.Batchable<sObject> {
    public database.queryLocator start(Database.BatchableContext bc){
        String query = 'select id, Name from Merchandis__c';
        return database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<Merchandis__c> mer){
        for(Merchandis__c m:mer){
            m.Name = m.Name+'User';
        }
        update mer;
    }
    public void finish(Database.BatchableContext bc){
        
    }

}