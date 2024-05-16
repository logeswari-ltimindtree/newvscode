public class CustomMetaData {
    public void getCustomdata(){
        My_custom_metadata__mdt  mcs = My_custom_metadata__mdt.getInstance('CustomTriggerOnOff');
        //My_custom_metadata__mdt mcs = [select id,Hierarchyfields__c from My_custom_metadata__mdt];
        system.debug(mcs.isActive__c);
        if(mcs.isActive__c == true){
            system.debug('Call your trigger');
        }
        else{
            system.debug('Dont call your trigger');
        }
    }
}