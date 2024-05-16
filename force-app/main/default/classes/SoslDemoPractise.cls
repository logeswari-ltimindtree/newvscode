public class SoslDemoPractise {
    public void getsosl(){
        list<list<sObject>> obj = [find 'gene' in all fields returning account(id, name),contact(id, name)];
        list<account> la = obj[0];
        list<contact> lc = obj[1];
        if(la.size() > 0){
            for(account a: la){
                system.debug('The id is'+a.id+'and the name'+a.name);
            }
        }else{
            system.debug('No account found');
        }
        if(lc.size() > 0){
            for(contact c : lc){
                system.debug('The id is'+c.id+'the name is'+c.name);
            }
        }else{
            system.debug('No contact is found');
        }
    }
}