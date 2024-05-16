@RestResource(urlMapping='/deleterecord/*')
global class DeleteInvoice {
    @httpDelete
    global static void  deleteAccount(){        // here void is given when we dont want any return type
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String recordId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Invoice__c inc = [select id from Invoice__c where id=:recordId];
        delete inc;
    }
}