public class CustomAuthentication {
    public void getclass(){
        Authentication_setting__mdt am = Authentication_setting__mdt.getInstance('Oauth');
        system.debug(am.client_id__c);
        system.debug(am.client_secret__c);
        system.debug(am.grant_type__c);
        system.debug(am.grant_type__c);
        system.debug(am.password__c);
    }
}