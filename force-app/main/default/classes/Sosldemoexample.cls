public class Sosldemoexample {
    public void getValues(){
        list<list<sObject>> obj = [find 'saree' in all fields returning Merchandis__c(id,name), SellItem__c(id,name)];
        list<Merchandis__c> mer = obj[0];
        list<SellItem__c> sell = obj[1];
        for(Merchandis__c m : mer){
            system.debug(m.id+m.name);
        }
        for(SellItem__c s : sell){
            system.debug(s.id+s.name);
        }
    }
}