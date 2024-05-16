public class Hierchy {
    public void getCustomSettingHeierachial(){
        myhierrsetting__c mcs  = myhierrsetting__c.getInstance('005IU00000B7i7o');
        //myhierrsetting__c mcs = [select id,name,Hierarchyfields__c from myhierrsetting__c where SetupOwnerId='005IU00000B7i7o'];
        system.debug(mcs.Hierarchyfields__c);
        if(mcs.Hierarchyfields__c == true){
            system.debug('Call your trigger');
        }
        else{
            system.debug('Dont call your trigger');
        }
    }
}