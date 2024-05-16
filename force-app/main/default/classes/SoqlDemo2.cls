public class SoqlDemo2 {
    public  void getAccount(){
      list<Account> acc=  [select id, AccountNumber,RecordTypeId,Industry from account];
        for(account a :acc){
            System.debug('The id is'+a.id+'name is '+a.AccountNumber+'accountnumber is'+a.RecordTypeId);
        }
    }
}