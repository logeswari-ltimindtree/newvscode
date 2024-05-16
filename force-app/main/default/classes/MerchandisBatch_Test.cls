@isTest
private class MerchandisBatch_Test {
    public static testMethod void test(){
        list<Merchandis__c> merList = new list<Merchandis__c>();
        for(integer i=0;i<200;i++){
            Merchandis__c c = new Merchandis__c(Name='Merchandis__c'+i);
            merList.add(c);
        }
        insert merList;
        
        Test.startTest();
             MerchandiseBatch cb = new  MerchandiseBatch();
            database.executeBatch(cb);
        Test.stopTest();
        
        Merchandis__c[] conupdateList = [select id,Name from Merchandis__c];
        system.assert(conupdateList[0].Name.contains('User'));
    }
}