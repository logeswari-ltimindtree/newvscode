public class MerchandiseCapsBatch implements Database.batchable<sObject>{
    public database.queryLocator start(Database.batchableContext bc){
        String query ='select id,Name  Price__c from Merchandis__c where Name=\'Caps\'' ;
        return database.getQueryLocator(query);
    }
    public void execute(Database.batchableContext bc, list<Merchandis__c> mer){
        for(Merchandis__c m : mer){
            m.Price__c = 100;
        }
        update mer;
    } 
	public void finish(Database.batchableContext bc ){
        
    }                                                                         
}