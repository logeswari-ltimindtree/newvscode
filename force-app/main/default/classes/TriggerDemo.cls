public class TriggerDemo {
   public static void insertMerchandiseBkup(map<Id,Merchandis__c> mer){
        Merchandise_archive__c ma;
        List<Merchandise_archive__c> maList = new List<Merchandise_archive__c>();
        set<id> li = mer.keyset();
        for(id l :li){
            Merchandis__c var = mer.get(l);
            ma = new Merchandise_archive__c();
            ma.name = var.name;
            ma.Stock__c = var.Stocks__c;//left(merchandise archive name)-right(merchandise name)-- since i gev same name.
        	ma.Description__c=var.Description__c;
        	ma.Price__c  = var.Price__c;
            maList.add(ma);
        }
        insert maList;
    }
}