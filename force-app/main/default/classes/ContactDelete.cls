public class ContactDelete {
    public static void preventcontact(List<contact> old){
        contact c = old[0];
        if(c.AccountId!=null){
            throw new ContactException();
        }
    } 
}