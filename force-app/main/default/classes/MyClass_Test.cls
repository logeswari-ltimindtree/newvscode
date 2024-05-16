@isTest
private class MyClass_Test {
    public static TestMethod void doTest(){
       MyClass p = new MyClass();
       Integer r = p.doSub(100,50);
       system.assertEquals(50,r,'Not an expected error');
    }
}