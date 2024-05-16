@RestResource(urlMapping='/student/*')
global class ListHttp {
    @httpPost
    global static void getRec(list<string> sr){
        for(string x:sr){
          Invoice__c p = new Invoice__c();
            p.Description__c = x;
            insert p;
        }
    }
}