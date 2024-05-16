@istest
global class Restconsumedemomock implements HttpCalloutMock{
    global HttpResponse respond(HttpRequest req){
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type','application/json;charset=UTF-8');
        res.setbody('{"name":"zebra"}');
        res.setstatuscode(200);
        return res;
    }

}