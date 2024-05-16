public class soslExampl {
    public void searchText(){
        list<list<sObject>> sob = [find 'gene' in all fields returning account(id, name), contact(id,name)];
        list<account> act = sob[0];
        list<contact> con = sob[1];
        if(act.size() > 0){
            for(account a: act){
                system.debug(a.id+a.name);
            }
        }
        else{
            system.debug('no contact found');
        }
        if(con.size() > 0){
            for(contact c : con){
                system.debug(c.id+c.name);
            }
        }
        else{
            system.debug('no contact record');
        }
    }
}