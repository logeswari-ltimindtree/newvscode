public class SOSLDemo {
    public void searchText(){
        list<list<sObject>> ob = [find 'gene' in all fields returning Account(id, Name), contact(id, Name)];
        list<Account> act = ob[0];
        list<contact> cont = ob[1];
        if(act.size() > 0){
            for(Account a:act){
                System.debug('Account Id='+a.id+'Account Name='+a.Name);
            }
        }
        else{
            System.debug('No Account Found');
        }
        if(cont.size() > 0){
            for(contact c: cont){
                System.debug('contact Id='+c.id+'contact Name='+c.Name);
             }
        }
        else{
			System.debug('No contact found');                                
        }                    
                  
    }
}