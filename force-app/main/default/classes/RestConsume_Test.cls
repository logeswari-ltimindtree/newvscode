@isTest
private class RestConsume_Test {
    public static testMethod void testconsume(){
        Test.setMock(HttpCalloutMock.class, new Restconsumedemomock());
        RestConsume.consumeRest(); // RestConsume is class & consumeRest is method.
    }

}