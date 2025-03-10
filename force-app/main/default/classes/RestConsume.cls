public class RestConsume {
    @future(callout=true)
    public static void consumeRest(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        //set the body as JSON object
        request.setBody('{"name":"Tiger"}');
        HttpResponse response = http.send(request);
        //parse the json response
        if(response.getStatusCode()!=201){
            System.debug('The status code returned was not expected:'+response.getStatusCode()+''+response.getStatus());
        }else{
            System.debug(response.getBody());
        }
    }
}