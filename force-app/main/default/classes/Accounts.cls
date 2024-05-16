public class Accounts {
    public void getAllaccountrecord(){
       list<account> acc = [select id, name,(select id,Name from contacts) from account];
        for(account a : acc){
            System.debug('The account id is'+a.id+'account name'+a.name+'and contact name'+a.contacts);
        }
    }
}