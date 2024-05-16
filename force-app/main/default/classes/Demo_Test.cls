@isTest //(seeallData=true)-> not a best practise
private class Demo_Test{
    /*@testSetup static void doSetup(){
        Account ac = new Account();
        ac.name='Test Account';
        insert ac;
    }*/

    public static testMethod void doTest(){
        Demo d = new Demo();
        d.sayHello();
        Integer r = d.sum(10,10);
        system.assertEquals(20,r,'Not an expected error');
        Test.startTest();
            Account act = Demo_TestFactory.createAccount();
            Account a = [select id, name from account where name =:act.name];
            d.updateAccount(a);
        Test.stoptest();
    }
}