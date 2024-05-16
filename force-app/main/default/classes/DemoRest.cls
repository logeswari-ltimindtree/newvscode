@Restresource(urlMapping='/account/*')
global class DemoRest {
	@httpGet
    global static list<account> getAccount(){
        list<account> act= [select id, name from account];
        return act;
    }
    @httpPost
    global static id getrecord(String nm){
        Account a = new Account();
        a.name = nm;
        insert a;
        return a.Id;
    }
    @httpDelete
    global static void getDelete(){
        RestRequest req = RestContext.request;
        RestResponse res =RestContext.response;
        string recordId =req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account acc = [select id, name from account where id=:recordId];
        delete acc;
    }
}