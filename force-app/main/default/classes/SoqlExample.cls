public class SoqlExample {
    public void getInvoice(){
	list<Merchandis__c> merchandise = [select id, name,(select id, name from sellItem__r) from Merchandis__c];
        for(Merchandis__c m : merchandise){
            system.debug(m.id+m.name+m.sellItem__r);
        }
    }
}