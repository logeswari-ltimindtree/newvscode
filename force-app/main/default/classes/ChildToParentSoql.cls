public class ChildToParentSoql {
    public void getchildrecords(){
        list<SellItem__c> sell =[select id, name, Merchandis__r.name from SellItem__c];
        for(SellItem__c s : sell){
            system.debug(s.id+s.name+s.Merchandis__r.name);
        }
    }
}