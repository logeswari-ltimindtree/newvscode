public class OpportunityBatch implements Database.Batchable<sObject>{
    public DataBase.queryLocator start(Database.BatchableContext bc){
        string query = 'select id, Amount from opportunity';
        return database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc, list<opportunity> op){
        for(opportunity o : op){
            o.Amount = 15000;
        }
        update op;
    }
    public void finish(Database.BatchableContext bc){
        
    }
}