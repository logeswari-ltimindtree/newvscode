public class SOQLMerchandis {
    public void getallMerchandisAccount(){
       list<Merchandis__c> merchants = [select id, Name,Price__c,Stocks__c,Description__c from Merchandis__c];
        for( Merchandis__c m: merchants){
            system.debug('The merchandise id '+m.id+'Name is'+m.Name+'price is'+m.Price__c+'Stock ='+m.Stocks__c+'Description'+m.Description__c);
        }
    }
}