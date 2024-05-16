@istest
private class OpportunityBatch_test {
    
    @testSetup
    static void testData(){
    List<Opportunity> oppList = new List<Opportunity>();
    for (integer i=0;i<200;i++){
        Opportunity op = new Opportunity();
        op.name='Demo opportunity'+i;
        op.StageName='Prospecting';
        op.CloseDate=system.today();
        oppList.add(op);
        }
    insert oppList;        
    }
    
   public static testMethod void test(){
   Test.startTest();//call your batch from here
        OpportunityBatch ob = new OpportunityBatch();
        database.executeBatch(ob);
   Test.stopTest();
    
   //Verify account updated
   Opportunity[] UpdatedList = [select id, Amount FROM Opportunity];
   System.assert(UpdatedList[0].Amount.equals(15000));
   }
}