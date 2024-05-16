@isTest
private class InvoiceBatch_Test{
    static testMethod void test(){
    
    Test.startTest();
        InvoiceBatch ib = new InvoiceBatch();
        database.executeBatch(ib);
    Test.stopTest();
    }
}