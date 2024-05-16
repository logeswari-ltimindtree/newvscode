@isTest
private class MyBatch_Test{
static testMethod void test(){

// create test account to be updated
//by the batch job

    List<Account> accList = new List<Account>();
    for (integer i=0;i<200;i++){
        Account m = new Account(Name='Account'+i);
        accList.add(m);
        }
    insert accList;
    
    Test.startTest();
        //call your batch from here
        MyBatch mb = new MyBatch();
        database.executeBatch(mb);
   Test.stopTest();
   
   //Verify account updated
   Account[] accUpdatedList = [select id, name FROM Account];
   System.assert(accUpdatedList[0].Name.Contains('Updated!!'));
   }
}