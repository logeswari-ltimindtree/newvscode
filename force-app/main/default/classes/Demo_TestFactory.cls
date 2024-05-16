@isTest
public class Demo_TestFactory{
    public static account createAccount(){
    Account act = new account();
    act.name = 'TestAccount';
    insert act;
    return act;
    }
}