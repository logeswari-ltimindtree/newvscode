public class newContact {

    public void doSave() {
        insert con;
    }
    Contact con;
    public newContact(){
    Id i = apexpages.currentpage().getparameters().get('id');
    if(i==null){
    con = new Contact();
    }
    else{
    con = [select id, name from contact where id=:i];
    }
    }
    public Contact getnewContact(){
    return con;
}
}