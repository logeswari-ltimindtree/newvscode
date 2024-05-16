public class childToParent {
    public void getAllcontact(){
        list<SellItem__c> sell = [select id, name,Invoice__r.Name from SellItem__c];
        for(SellItem__c c: sell){
            System.debug('The sell id'+c.id+'name is'+c.name+'invoice name'+c.Invoice__r.Name);
        }
    }
}