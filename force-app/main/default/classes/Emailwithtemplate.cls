public class Emailwithtemplate {
    public static void mail(){
        list<Messaging.SingleemailMessage> mail = new list<Messaging.SingleemailMessage>();
        id i=[select id from EmailTemplate where name='My Template'].id;
        //EmailTemplate tem i=[select id from EmailTemplate where name='My Template'];
        id j= [select id,email from contact where name='Email'].id;
        //contact con c =[select id,email from contact where name='Email'];
        Messaging.SingleEmailMessage m= new Messaging.SingleEmailMessage();
        m.setTemplateId(i);
        //m.setTemplateId(tem.id);
        m.setTargetobjectId(j);
        //m.setTemplateId(con.id);
        mail.add(m);
        Messaging.sendEmail(mail);
    }
}









/*Execution
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {'logeswrim501@gmail.com','logeswarim5@gmail.com'};
mail.setToAddresses(toAddresses);
mail.setSubject('Batch Job Completion Report');
mail.setPlainTextBody('The batch job has completed');
*/