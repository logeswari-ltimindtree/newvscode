@istest
private class AccountInsertion_Test {
   @testSetup
   public static void createRec()
   {
       Account act =  new Account(name='Test', Industry='Education');
       insert act;
   }
    @istest
    public static void  testAccountTrigger(){
        Account a = [select id, name ,Ownership from account where name='Test'];
        System.assert(a.Ownership.equals('Public'));
    }
}