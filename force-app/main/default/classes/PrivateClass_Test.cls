@istest
private class PrivateClass_Test {
    public static TestMethod void doTest(){
       PrivateClass p = new PrivateClass();
       Integer r = p.doSub(100,50);
       system.assertEquals(50,r,'Not an expected error');
    }
}