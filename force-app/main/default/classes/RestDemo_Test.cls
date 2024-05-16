@isTest
private class RestDemo_Test {
    
    @testsetup
    static void mysetUp(){
        Account acc = new Account();
        acc.name = 'LTIMindtree';
        insert acc;
    }
    
    public static testMethod  void testGetAllAccount(){
        Test.startTest();
        	List<account> testAccounts = RestDemo.getAllAccount();
        Test.stopTest();
        System.assertEquals('LTIMindtree',testAccounts[0].name,'unexpected output');    
    }
    
    @isTest
    public static void testInsertAccount(){
     Test.startTest();
        Id accountId = RestDemo.insertAccount('Test Account2');
        list<account> actid = [select id from account where id=:accountId];
        System.assertNotEquals(accountId, actid[0].id,'Unexpected output');
     Test.stopTest();  
    }
    
    @isTest
    public static void testDeleteAccount(){
		List<account> testAccount = [select id from account];
     Test.startTest();
        RestRequest req = new RestRequest();
        //RestResponse res = new RestResponse();
        req.requestURI = '/services/apexrest/myAccount/'+testAccount[0].id;
        RestContext.request = req;
        String s = RestDemo.deleteAccount();
        
        System.assertEquals('deleted',s,'unexpected output');
     Test.stopTest();
    }
}