public class SOQLDemo {
    public void getAllAccount(){
        list<account> act = [select id,name from account];
        for(account a:act){
            System.debug('Account id is'+' '+a.id+'and account name is'+' '+a.name);
        }
    }
}