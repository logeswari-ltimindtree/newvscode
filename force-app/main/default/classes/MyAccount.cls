public class MyAccount {
    public PageReference dosave(){  // instead of void give PageReference
        upsert act;
        //return new PageReference('/apex/successpage');
        return new PageReference('https://www.google.com?q=Legend Of Saleforce');
    }
    
    Account act;
    public MyAccount() {
    
    id i = apexpages.currentpage().getparameters().get('id');
    
    if(i == null){
        act = new Account();
        
    }else{
        act = [select id, name from account where id =:i];
    }
   
    }
    public Account getMyAccount(){
        return act;
    }

}