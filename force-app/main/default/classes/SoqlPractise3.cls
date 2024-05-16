public class SoqlPractise3 {
    public  void getAccount(){
      list<Account> acc=  [select id, AccountNumber,RecordTypeId,Industry from account];
        for(account m : acc){
            system.debug(m.id+m.AccountNumber+m.RecordTypeId+m.Industry);
        }
    }
}