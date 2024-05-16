public class EmailWithoutTemplate {
    public void mailservice(){
        list<messaging.singleemailmessage> details = new list<messaging.singleemailmessage>();
        list<string> mailid = new list<string>();
		mailid.add('logeswarim5@gmail.com');
	    mailid.add('shreya244662@gmail.com');
		messaging.singleemailmessage mail =new messaging.singleemailmessage();
		mail.setToAddresses(mailid);
		//mail.ToAddresses=new list<String>{'logeswarim5@gmail.com','shreya244662@gmail.com'};
        mail.setsubject('Trial message');
    	mail.setplaintextbody(' This email is from Apex class');
		details.add(mail);
		messaging.sendemail(details);
	}
 
}




/* Execution
EmailWithoutTemplate ew = new EmailWithoutTemplate();
ew.mailservice();
*/