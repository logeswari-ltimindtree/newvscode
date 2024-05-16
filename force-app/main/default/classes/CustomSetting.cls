public class CustomSetting {
    public void getCalled(){
        //mysetting__c mcs  = mysetting__c.getInstance('ProductTriggerOnOff');
        mysetting__c mcs = [select id,name,	isActive__c from mysetting__c];
        system.debug(mcs.isActive__c);
        if(mcs.isActive__c == true){
            system.debug('Call your trigger');
        }
        else{
            system.debug('Dont call your trigger');
        }
    }
}








/* Execution
CustomSetting cs = new CustomSetting();
cs.getCalled();
*/