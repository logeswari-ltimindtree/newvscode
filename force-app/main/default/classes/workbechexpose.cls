@RestResource(urlMapping='/democustom/*')
global class workbechexpose {
    @httpget
    global static List<merchandis__c> getmerchandise(){
        list<merchandis__c> mer = [select id , name from merchandis__c];
        return mer;
    }
    @httpPost
    global static id getstring(string nm){
            merchandis__c m = new merchandis__c();
            m.name = nm;
            insert m;
            return m.id;
    }
    @httpdelete
    global static void dodelete(){
        RestRequest re = RestContext.request;
        RestResponse rs = RestContext.response;
        string RecordId = re.requestURI.subString(re.requestURI.lastIndexOf('/')+1);
        merchandis__c m  = [select id , name from merchandis__c where id=:RecordId];
        delete m;
    }
}