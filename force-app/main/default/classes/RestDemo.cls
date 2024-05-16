@RestResource(urlMapping='/tamilnadu/*')
global class RestDemo { //using rest class should be global
    @httpGet
    global static list<Account> getAllAccount(){ 
        List<Account> act = [select id, name from account];
        return act;
    }     
    @httpPost
    global static id insertAccount(string nm){
        Account a = new Account();
        a.name = nm;
        insert a;
        return a.id; 
    }
    @httpDelete
    global static string  deleteAccount(){
        RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account act = [select id from account where id=:recordId];
        delete act;
        return 'deleted';    
    }
}