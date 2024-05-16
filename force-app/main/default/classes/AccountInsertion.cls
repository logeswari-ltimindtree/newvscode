public class AccountInsertion {
    public static void getValue(List<Account> acc){
        for(Account c :acc){
            if(c.Industry=='Education'){
                c.Ownership = 'Public';
            }
        }
    }
}