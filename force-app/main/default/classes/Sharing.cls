public with sharing class Sharing {
    public void getAccounts(){
    	list<account> acc = [select id, name from account];
    	for(account a:acc){
        	System.debug(a.name);
    }
}
}